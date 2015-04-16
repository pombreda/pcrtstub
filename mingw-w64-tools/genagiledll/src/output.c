/*
    genagiledll - Generate stub-library acting like an import-library
                  using .def file syntax.
    Copyright (C) 2014, 2015  mingw-w64 project

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <direct.h>

#include "token.h"
#include "makefile.h"
#include "output.h"

static void generate_stub_c (FILE *fp);

static const char *cur_IAT = NULL;
static const char *cur_dllsym = NULL;

void printHeader (FILE *fp, char *commentBegin, char *commentEnd)
{
  fprintf (fp, "%s This file was generated by the genagiledll tool.%s\n", commentBegin, commentEnd);
  fprintf (fp, "%s Written by Kai Tietz and Ray Donnelly 2014, 2015%s\n", commentBegin, commentEnd);
  fprintf (fp, "\n");
}

static void init_curIAT (void)
{
  char *h;
  char *r;

  h = (char *) strdup (cur_libname);
  while ((r = strchr (h, '.')) != NULL)
    *r = '_';
  cur_dllsym = unifyStr (h);
  free (h);

  cur_IAT = unifyCat ("__IAT_", cur_dllsym);
}

static void printStubCode (FILE *fp, const char *hname, const char *sym)
{
  printHeader (fp, "/*", " */");

  fprintf (fp, "\t.file \"stub_%s\"\n", hname);
  fprintf (fp, "\t.text\n");
  fprintf (fp, "#ifdef __x86_64__\n");
  fprintf (fp,"\t.globl %s\n", sym);
  fprintf (fp, "%s:\n", sym);
  fprintf (fp, "\tjmp *__imp_%s(%%rip)\n", sym);
  fprintf (fp, "#elif __i386__\n");
  fprintf (fp,"\t.globl _%s\n", sym);
  fprintf (fp, "_%s:\n", sym);
  fprintf (fp, "\tjmp *__imp__%s\n", sym);
  fprintf (fp, "#else\n"
    "#error \"Unknown target\"\n"
    "#endif\n");
}

static FILE *
addSrcFopen (FILE *makefile, const char * pth, const char * filename, int isFinalFile, const char * mode) {
    FILE *result = fopen (unifyCat (pth, filename), mode);
    if (result != NULL) {
        makefileAddSourceFile (makefile, filename, isFinalFile);
    }
    return result;
}

void
outputSyms (void)
{
  FILE *fp;
  FILE *makefile;
  sSymbol *l;
  const char *pth = unifyCat ("./s_", cur_libname);

  _mkdir (pth);

  init_curIAT ();

  pth = unifyCat (pth, "/");

  makefile = makefileCreate(pth);
  if (makefile == NULL) {
      fprintf(stderr, "Error: Failed to create a Makefile in %s\n", pth);
      exit(-1);
  }
  makefileStartGroup (makefile);

  fp = addSrcFopen (makefile, pth, "do_init.c", 0, "wb");
  generate_stub_c (fp);
  fclose (fp);

  fp = addSrcFopen (makefile, pth, "sec_start.S", 0, "wb");
  printHeader (fp, "/*", " */");

  fprintf (fp, "\t.section .rdata, \"dr\"\n");
  fprintf (fp, "__def_module:\n");
  fprintf (fp, "\t.ascii \"%s\"\n", cur_libname);
  fprintf (fp,"\t.section .rdata$imp.%s, \"dr\"\n", cur_libname);
  fprintf (fp, "#ifdef __x86_64__\n");
  fprintf (fp, "\t.align 16\n");
  fprintf (fp, "\t.globl %s\n%s:\n", cur_IAT, cur_IAT);
  fprintf (fp, "\t.quad __def_module, 0\n");
  fprintf (fp, "#elif __i386__\n");
  fprintf (fp, "\t.align 8\n");
  fprintf (fp, "\t.globl _%s\n_%s:\n", cur_IAT, cur_IAT);
  fprintf (fp, "\t.long __def_module, 0\n");
  fprintf (fp, "#else\n#error \"Unknown target\"\n#endif\n");
  fprintf (fp, "\n");
  fprintf (fp,"\t.section .rdata$imp.%s.xxxxxxxx, \"dr\"\n", cur_libname);
  fprintf (fp,"\t.linkonce\n");
  fprintf (fp, "#ifdef __x86_64__\n");
  fprintf (fp, "\t.align 8\n");
  fprintf (fp, "\t.quad 0, 0\n");
  fprintf (fp, "#elif __i386__\n");
  fprintf (fp, "\t.align 4\n");
  fprintf (fp, "\t.long 0, 0\n");
  fprintf (fp, "#else\n#error \"Unknown target\"\n#endif\n");
  fclose (fp);

  l = t_sym;
  while (l != NULL)
    {
      const char *hname = unifyCat (l->sym, ".S");

      if (l->is_data == 0)
      {
    fp = addSrcFopen (makefile, pth, unifyCat ("stub_", hname), 0, "wb");

	printStubCode (fp, hname, l->sym);

	fclose (fp);
      }
      fp = addSrcFopen (makefile, pth, unifyCat ("imp_", hname), l->next == NULL ? 1 : 0, "wb");

      printHeader (fp, "//*", " *//");

      fprintf (fp, "\t.file \"imp_%s\"\n", hname);

      fprintf (fp, "#ifdef __x86_64__\n");
      fprintf (fp, "\t.section .data$%s.iat.%s,\"w\"\n", cur_libname, l->sym);
      fprintf (fp,"\t.globl __imp_%s\n", l->sym);
      fprintf (fp, "\t.align 8\n");
      fprintf (fp, "__imp_%s:\n", l->sym);
      fprintf (fp, "\t.quad %s\n", (l->libsym[0] != 0 ? l->libsym : "0"));
      fprintf (fp, "\t.section .rdata, \"dr\"\n");
      fprintf (fp, "__imp_%s_name:\n", l->sym);
      fprintf (fp, "\t.ascii \"%s\"\n", l->sym);
      fprintf (fp, "\t.section .rdata$imp.%s.%s, \"dr\"\n", cur_libname, l->sym);
      fprintf (fp, "\t.align 8\n");
      fprintf (fp, "\t.quad __imp_%s_name, __imp_%s\n", l->sym, l->sym);

      fprintf (fp, "#elif __i386__\n");
      fprintf (fp, "\t.section .data$%s.iat.%s, \"w\"\n", cur_libname, l->sym);
      fprintf (fp, "\t.align 4\n");
      fprintf (fp,"\t.globl __imp__%s\n", l->sym);
      fprintf (fp, "__imp__%s:\n", l->sym);
      fprintf (fp, "\t.long %s%s\n",
	       (l->libsym[0] != 0 ? "_" : ""),
	       (l->libsym[0] != 0 ? l->libsym : "0"));
      fprintf (fp, "\t.section .rdata, \"dr\"\n");
      fprintf (fp, "__imp__%s_name:\n", l->sym);
      fprintf (fp, "\t.ascii \"%s\"\n", l->sym);
      fprintf (fp, "\t.section .rdata$imp.%s.%s, \"dr\"\n", cur_libname, l->sym);
      fprintf (fp, "\t.align 4\n");
      fprintf (fp, "\t.long __imp_%s__name, __imp__%s\n", l->sym, l->sym);

      fprintf (fp, "#else\n#error \"Unknown target\"\n#endif\n");

      fclose (fp);

      if (l->subs != NULL)
      {
	sSymbol *p;

	p = l->subs;
	while (p != NULL)
	{
	  const char *hn = unifyCat (p->sym, ".S");
	  fp = fopen (unifyCat (pth, unifyCat ("stub_", hn)), "wb");

	  printStubCode (fp, hn, p->sym);

	  fclose (fp);

	  p = p->next;
	}
	
	p = l->subs;
	while (p != NULL)
	{
	  const char *hn = unifyCat (p->sym, ".S");
	  fp = fopen (unifyCat (pth, unifyCat ("imp_", hn)), "wb");

      printHeader (fp, "//*", " *//");
	  
	  fprintf (fp, "\t.file \"imp_%s\"\n", hn);

	  fprintf (fp, "#ifdef __x86_64__\n");
	  fprintf (fp, "\t.section .data$%s.iat.%s,\"w\"\n", cur_libname, p->sym);
	  fprintf (fp,"\t.globl __imp_%s\n", p->sym);
	  fprintf (fp, "\t.align 8\n");
	  fprintf (fp, "__imp_%s:\n", p->sym);
	  fprintf (fp, "\t.quad %s\n", (p->libsym[0] != 0 ? p->libsym : (l->libsym[0] != 0 ? l->libsym : "0")));

	  fprintf (fp, "\t.section .rdata$imp.%s.%s, \"dr\"\n", cur_libname, p->sym);
	  fprintf (fp, "\t.align 8\n");
	  fprintf (fp, "\t.quad __imp_%s, 1, __imp_%s, 0\n", l->sym, p->sym);

	  fprintf (fp, "#elif __i386__\n");
	  fprintf (fp, "\t.section .data$%s.iat.%s, \"w\"\n", cur_libname, p->sym);
	  fprintf (fp, "\t.align 4\n");
	  fprintf (fp,"\t.globl __imp__%s\n", p->sym);
	  fprintf (fp, "__imp__%s:\n", p->sym);
	  fprintf (fp, "\t.long %s\n", (p->libsym[0] != 0 ? p->libsym : (l->libsym[0] != 0 ? l->libsym : "0")));

	  fprintf (fp, "\t.section .rdata$imp.%s.%s, \"dr\"\n", cur_libname, p->sym);
	  fprintf (fp, "\t.align 4\n");
	  fprintf (fp, "\t.long __imp__%s, 1, __imp__%s, 0\n", l->sym, p->sym);

	  fprintf (fp, "#else\n#error \"Unknown target\"\n#endif\n");

	  fclose (fp);

	  p = p->next;
	}
      }

      l = l->next;
    }
  makefilePrintPrologue (makefile);
  fclose (makefile);
}

static void generate_stub_c (FILE *fp)
{
  printHeader (fp, "//*", " *//");
  fprintf (fp,
    "#include <windows.h>\n"
    "#include <stdlib.h>\n"
    "\n"
    "extern size_t %s[];\n"
    "\n"
    "int do_stub_%s (void);\n"
    "\n", cur_IAT, cur_dllsym);
  fprintf (fp,
    "int\n"
    "do_stub_%s (void)\n"
    "{\n"
    "  const char *pc, *dllname = \"\";\n"
    "  int i;\n"
    "  size_t *pimp, *piat, p;\n"
    "  HMODULE hmod = NULL;\n"
    "\n"
    "  for (i = 0; %s[i] != 0;)\n"
    "    {\n"
    "    if (%s[i+1] == 0)\n", cur_dllsym, cur_IAT, cur_IAT);
  fprintf (fp,
    "      {\n"
    "\tdllname = (const char *) %s[0];\n"
    "\tif (!hmod)\n"
    "\t  hmod = GetModuleHandleA (dllname);\n"
    "\ti += 2;\n"
    "      }\n", cur_IAT);

  fprintf (fp,
    "    else if (%s[i+1] == 1)\n"
    "      {\n"
    "\tpiat = (size_t *) %s[i];\n"
    "\tp = piat[0];\n"
    "\ti += 2;\n"
    "\twhile ((piat = (size_t *) %s[i]) != NULL)\n"
    "\t  {\n"
    "\t    piat[0] = p;\n"
    "\t    ++i;\n"
    "\t  }\n"
    "\t++i;\n"
    "      }\n", cur_IAT, cur_IAT, cur_IAT);

  fprintf (fp,
    "    else\n"
    "      {\n"
    "\tif (!hmod)\n"
    "\t  hmod = LoadLibraryA (\"%s\");\n"
    "\tpc = (const char *) %s[i];\n"
    "\tpimp = (size_t *) %s[i+1];\n"
    "\tp = (size_t) GetProcAddress (hmod, pc);\n"
    "\n"
    "\tif (p)\n"
    "\t  pimp[0] = p;\n"
    "\ti += 2;\n"
    "      }\n", cur_libname, cur_IAT, cur_IAT);

  fprintf (fp,
    "  }\n"
    "\n"
    "  return 0;\n"
    "}\n");
}

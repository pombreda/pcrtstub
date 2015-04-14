/* This file was generated by genstubdll tool.
 * Written by Kai Tietz 2014
 */

#include <windows.h>
#include <stdlib.h>

extern size_t __IAT_msvcrt_dll[];

int do_stub_msvcrt_dll (void);

int
do_stub_msvcrt_dll (void)
{
  const char *pc, *dllname = "";
  int i;
  size_t *pimp, *piat, p;
  HMODULE hmod = NULL;

  for (i = 0; __IAT_msvcrt_dll[i] != 0;)
    {
    if (__IAT_msvcrt_dll[i+1] == 0)
      {
	dllname = (const char *) __IAT_msvcrt_dll[0];
	if (!hmod)
	  hmod = GetModuleHandleA (dllname);
	i += 2;
      }
    else if (__IAT_msvcrt_dll[i+1] == 1)
      {
	piat = (size_t *) __IAT_msvcrt_dll[i];
	p = piat[0];
	i += 2;
	while ((piat = (size_t *) __IAT_msvcrt_dll[i]) != NULL)
	  {
	    piat[0] = p;
	    ++i;
	  }
	++i;
      }
    else
      {
	if (!hmod)
	  hmod = LoadLibraryA ("msvcrt.dll");
	pc = (const char *) __IAT_msvcrt_dll[i];
	pimp = (size_t *) __IAT_msvcrt_dll[i+1];
	p = (size_t) GetProcAddress (hmod, pc);

	if (p)
	  pimp[0] = p;
	i += 2;
      }
  }

  return 0;
}

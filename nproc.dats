%{^
#include <stdio.h>
#include <sys/sysinfo.h>

extern int nproc_glibc() { return get_nprocs(); }
%}

%{
// from here: https://stackoverflow.com/a/22330309
#ifdef __APPLE__
int nproc_mac() {
    int count;
    size_t count_len = sizeof(count);
    sysctlbyname("hw.logicalcpu", &count, &count_len, NULL, 0);
    return count;
}
#endif

#if defined(__x86_64__)
extern int nproc_x86_64() {
  int t;

    asm volatile (
        "cpuid\n"
        "mov %0, %%eax\n"
        "shr $0x10, %0\n"
        "and $0xf, %0\n"
        "dec %0"
        : "=r" (t)
    );

  return t;
}
#endif
%}

extern
fun nproc_glibc() : [n:nat] int(n) =
  "mac#"

extern
fun nproc_mac() : [n:nat] int(n) =
  "mac#"

extern
fun nproc_x86_64() : [n:nat] int(n) =
  "mac#"

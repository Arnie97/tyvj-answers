#include <stdio.h>

#if defined(_WIN32)
#define WIN32_LEAN_AND_MEAN
#include <Windows.h>

void os_info()
{
    OSVERSIONINFOEX ver;
    ver.dwOSVersionInfoSize = sizeof(OSVERSIONINFOEX);
    if (GetVersionEx(&ver)) {
        char *product_types[] = {
            "Unknown", "Workstation", "Domain Controller", "Server"
        };
        printf(
            "NT %d.%d.%d.%d %s Edition",
            ver.dwMajorVersion, ver.dwMinorVersion,
            ver.wServicePackMajor, ver.wServicePackMinor,
            product_types[ver.wProductType]
        );
    }
}

#elif defined(__POSIX__)
#include <sys/utsname.h>

void os_info()
{
    struct utsname ver;
    uname(&ver);
    printf("%s %s %s %s", ver.sysname, ver.release, ver.version, ver.machine);
}

#else

void os_info()
{
    fputs("Unknown OS", stdout);
}

#endif

int
main(int argc, char *argv[])
{
    os_info();
    printf(
        ", "
#if defined(_MSC_VER)
        "Visual C++ %d.%d (%d)", _MSC_VER / 100 - 6, _MSC_VER % 100, _MSC_VER
#elif defined(__GNUC__)
#if !defined(__GNUC_PATCHLEVEL__)
#define __GNUC_PATCHLEVEL__ (0)
#endif
        "GCC %d.%d.%d", __GNUC__, __GNUC_MINOR__, __GNUC_PATCHLEVEL__
#endif
    );
    return 0;
}

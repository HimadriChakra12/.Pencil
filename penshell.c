#include <windows.h>
#include <shellapi.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int is_admin() {
    HKEY hKey;
    // Try opening a key that requires admin access
    LONG result = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "SOFTWARE", 0, KEY_WRITE, &hKey);
    if (result == ERROR_SUCCESS) {
        RegCloseKey(hKey);
        return 1;
    }
    return 0;
}

void run_ps_script(const char *script_name) {
    char command[1024];
    const char *base_url = "https://github.com/HimadriChakra12/.Pencil/raw/refs/heads/master/sketches/";

    snprintf(command, sizeof(command),
        "powershell -NoProfile -ExecutionPolicy Bypass -Command \"iwr -useb '%s%s' | iex\"",
        base_url, script_name);

    system(command);
}

void clear_screen() {
    system("cls");
}

void start_shell() {
    char input[128];
    printf("\033[1;35m[Pen]\033[0m Type 'write', 'sharp', 'erase', or 'fluid'\n");

    while (1) {
        printf("\033[1;32mpen>\033[0m ");
        if (!fgets(input, sizeof(input), stdin)) break;

        input[strcspn(input, "\r\n")] = 0;

        if (strcmp(input, "fluid") == 0) break;
        else if (strcmp(input, "dot") == 0) run_ps_script("dot.ps1");
        else if (strcmp(input, "write") == 0) run_ps_script("write.ps1");
        else if (strcmp(input, "sharp") == 0) run_ps_script("sharp.ps1");
        else if (strcmp(input, "erase") == 0) run_ps_script("erase.ps1");
	    else if (strcmp(input, "clear") == 0) clear_screen();
        else if (strlen(input) > 0) printf("\033[1;31mUnknown command:\033[0m %s\n", input);
    }

    printf("\033[1;34m[No Ink]\033[0m\n");
}

int main() {
    if (!is_admin()) {
        // Relaunch as admin using ShellExecute
        char exe_path[MAX_PATH];
        GetModuleFileNameA(NULL, exe_path, MAX_PATH);

        SHELLEXECUTEINFOA sei = { sizeof(sei) };
        sei.lpVerb = "runas";
        sei.lpFile = exe_path;
        sei.nShow = SW_SHOWNORMAL;

        if (!ShellExecuteExA(&sei)) {
            MessageBoxA(NULL, "UAC elevation was cancelled or failed.", "Error", MB_ICONERROR);
            return 1;
        }

        return 0; // Exit current instance
    }

    start_shell();
    return 0;
}

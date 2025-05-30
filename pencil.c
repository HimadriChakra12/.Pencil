#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void run_ps_script(const char *script_name, int run_as_admin) {
    char command[1024];

    const char *base_url = "https://github.com/HimadriChakra12/.Pencil/raw/refs/heads/master/sketches/";
    snprintf(command, sizeof(command),
             "powershell -NoProfile -ExecutionPolicy Bypass -Command \"iwr -useb '%s%s' | iex\"",
             base_url, script_name);

    system(command);
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("\033[1;33mUsage: pencil write|sharp|erase|help\033[0m\n");
        return 1;
    }

    if (strcmp(argv[1], "write") == 0) {
        run_ps_script("write.ps1", 0);
    } else if (strcmp(argv[1], "sharp") == 0) {
        run_ps_script("sharp.ps1", 0);
    } else if (strcmp(argv[1], "erase") == 0) {
        run_ps_script("erase.ps1", 0);
    } else if (strcmp(argv[1], "help") == 0) {
        printf("\033[1;36mdot: copy configs\033[0m\n");
        printf("\033[1;36mwrite: make symlinks\033[0m\n");
        printf("\033[1;36msharp: push .graphite\033[0m\n");
        printf("\033[1;36merase: remove .graphite\033[0m\n");
    } else {
        printf("Unknown command: %s\n", argv[1]);
        return 1;
    }

    return 0;
}

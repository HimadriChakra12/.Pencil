#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: pencil <dot|write|sharp|erase>\n");
        return 1;
    }

    if (strcmp(argv[1], "dot") == 0) {
        system("powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "https://github.com/HimadriChakra12/.Pencil/raw/refs/heads/master/sketches/dot.ps1" | iex"' -Verb RunAs");
    } else if (strcmp(argv[1], "write") == 0) {
        system("powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "https://github.com/HimadriChakra12/.Pencil/raw/refs/heads/master/sketches/write.ps1" | iex"' -Verb RunAs");
    } else if (strcmp(argv[1], "sharp") == 0) {
        system("powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "https://github.com/HimadriChakra12/.Pencil/raw/refs/heads/master/sketches/sharp.ps1" | iex"' -Verb RunAs");
    } else if (strcmp(argv[1], "erase") == 0) {
        system("powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "https://github.com/HimadriChakra12/.Pencil/raw/refs/heads/master/sketches/erase.ps1" | iex"' -Verb RunAs");
    } else {
        printf("Unknown command: %s\n", argv[1]);
    }

    return 0;
}


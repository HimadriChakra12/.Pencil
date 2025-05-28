# .pencil
A Industrial way to mamage Windows .dotfiles aka .graphite.
```powershell
+------------------------------------------------------+
|                                            ### ###   |
|                                            ``` ###   |
|                                           #### ###   |
|     #######    ###### ## #####   ########  ### ###   |
|     ##   ###  ##   ##  ###  ### ###        ### ###   |
|     ##   ###  ######   ###  ### ###        ### ###   |
|     #######   ##     # ###  ### ###        ### ###   |
|     ##         ######  ###  ###  ########  ### ####  |
| ##  ##   #########################################8> | 
| ``  ``                                               |
+------------------------------------------------------+
```
## Util
- dot
[ ] copy configs

- write
[X] make symlinks

- sharp
[X] push .dotfiles

- erase
[X] remove configs

## Installation

```
iwr -useb "https://github.com/HimadriChakra12/.Pencil/raw/refs/heads/master/builder/factory.ps1"
```
copy and paste the code to Powershell. Run it will automatically install Pencil for you.

## Usage
0. Builder/factory.ps1
    It will install the program and find Charcoals[preinstalled configs] of programs. 
    Then It Will check if you have .graphite[.dotfiles folder for .pencil].
    If You don't have one[repo] you have to make one. [so that you can save the configs in your git(git_providers)

    It will check Charcoals for you.
    ** If you think some Charcoals are not included, you can make a pull request or a issue to add it **
    Copy[cut] the Charcoals to the .graphite. [will be shifted to dot.ps1]

1. sketches/erase.ps1
    Remove the Charcoals

2. sketches/write.ps1
    This automatically find your Charcoals in the .graphite folder and make a symlink to make it a Graphite.

3. sketches/sharp.ps1
    Push .graphite



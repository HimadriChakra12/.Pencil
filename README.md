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
## Installation
You can install [wheat](https://github.com/HimadriChakra12/wheat) and install it from there.
Or,

```powershell
iwr -useb "https://tinyurl.com/hpencil" | iex
```
Copy and paste the code to Powershell. Run it will automatically install Pencil for you.

## Usage
write `pencil` to use the command or `pen` to enter the shell mode. Using as admin privillages is must. So installs and uses [gsudo](https://github.com/gerardog/gsudo#installation). 
```
sudo pencil [write]/[erase]/[sharp]
```
or
```
sudo pen
```

1. sketches/dot.ps1: Copies the charcoals.
2. sketches/erase.ps1: Remove the Charcoals.
3. sketches/write.ps1: This automatically find your Charcoals in the .graphite folder and make a symlink to make it a Graphite.
4. sketches/sharp.ps1: Push .graphite.



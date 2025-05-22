# 53D-Notebook

[![Build Typst Document](https://github.com/Area-53-Robotics/53D-Notebook/actions/workflows/build.yml/badge.svg)](https://github.com/Area-53-Robotics/53D-Notebook/actions/workflows/build.yml) [![Spell Check](https://github.com/Area-53-Robotics/53D-Notebook/actions/workflows/typos.yml/badge.svg)](https://github.com/Area-53-Robotics/53D-Notebook/actions/workflows/typos.yml) [![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC_BY--NC--ND_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

53D's notebook for the 2025-26 VRC Push Back challenge. Written by Ishika Saha.

## Special Thanks To
- Terry for notebooking advice

## Typst Extensions Used
- [codly](https://typst.app/universe/package/codly)
- [showybox](https://typst.app/universe/package/showybox)
- [codetastic](https://typst.app/universe/package/codetastic)
- [cetz](https://typst.app/universe/package/cetz)

## How to Read the Notebook
- You can download the latest [release](https://github.com/Area-53-Robotics/53D-Notebook/releases) of the notebook, which gets updated everytime we attend a tournament
- You can download the most recent version of the notebook by going to the [Actions](https://github.com/Area-53-Robotics/53D-Notebook/actions) tab, clicking on the latest [Build Typst Document](https://github.com/Area-53-Robotics/53D-Notebook/actions/workflows/build.yml) workflow, and downloading the pdf file in "Artifacts."
- You can compile the notebook yourself using the instructions below

## How to Compile the Notebook
1. Install the required fonts:
    - Linux Libertine
    - Orbitron
    - Virgil 3 YOFF
2. Install Typst

Download a [release](https://github.com/typst/typst/releases/), and add it to your system's PATH. 

You can also use a package manager:

```
# Windows
winget install --id Typst.Typst

# MacOS
brew install typst

# Arch Linux
sudo pacman -S typst

# Nix
nix run nixpkgs#typst
```
3. Clone the repository
```sh
git clone https://github.com/Area-53-Robotics/53D-Notebook.git
cd 53D-Notebook
```
4. Compile the project
```sh
typst compile main.typ
```

## License
The content of this notebook is licensed under a [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License][cc-by-nc-nd].

The template that this notebook uses is licensed under [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

[![CC BY-NC-ND 4.0][cc-by-nc-nd-image]][cc-by-nc-nd]

[cc-by-nc-nd]: https://creativecommons.org/licenses/by-nc-nd/4.0/
[cc-by-nc-nd-image]: https://licensebuttons.net/l/by-nc-nd/4.0/88x31.png

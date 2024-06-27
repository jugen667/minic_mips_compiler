# MiniC Compiler

Compiler for a simplified version of C

## Main features

Produces a binary file that convert a MiniC program into a MIPS assembly program
This also can produce a tree of the program

## About MiniC 

MiniC is a sub-language of C. 
More about the language under grammar/rules.md

## Known Issues
- **Un-portable on Windows**
*miniccutils.a* is a static lib not ported on Windows, the project won't compile on a Windows System
	>Build this project on macOS or a Linux System to ensure the correct build of the binary

- **Loops inside loops**


## About the author
This repo is a fork of [this project](https://github.com/thomasrPPS/Compilation_pj_Genty_Rio)

Started as a school project, I decided to fork this project to carry on, clarify its stucture and add the missing features.

We are both former embedded system student and enthusiast about working around low-level programming 

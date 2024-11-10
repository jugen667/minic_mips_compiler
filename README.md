# MiniC Compiler

Compiler for a simplified version of C on MIPS (not maintained anymore)

## Main features

Produces a binary file that convert a MiniC program into a MIPS assembly program.
This also can produce a tree of the program.

## About MiniC 

MiniC is a sub-language of C. 

More about the language under [grammar/rules.md](https://github.com/jugen667/minic_compiler/blob/master/grammar/rules.md)

## How to use

- Create the **binary** : ```make all``` -> creation of the binary **minicc** in ```bin``` folder

- Compile a MiniC program : In ```compil_minic``` folder, run ```bin/minicc <file-name>``` -> creation of a MIPS assembly file ```out.s``` 

- Compiler option : run ```bin/minicc -h``` to display the option list

- Run the ```out.s``` file with Mars : ```java -jar tools/Mars_4_2.jar out.s``` (you will need to have Java installed)

- Create the visual graph of the program : ```cd tools/ && ./graph-create.sh```, the ouput will be located in ```tools/graph-last-program```

## Known Issues
- **Un-portable on Windows**
*miniccutils.a* is a static lib not ported on Windows, the project won't compile on a Windows System
	>Build this project on macOS or a Linux System to ensure the correct build of the binary

- **Impossible to declare negative integrer** 

- **Loops inside loops** and **branch inside branch** : Loop or branch initialized inside another is unstable and sometimes not working

- ***else*** statements not translated to assembly

- ~~**Wrong offset on *print()*** : sometimes the variable printed via the *print()* function is the wrong one, due to an offset miscalculation~~


## About the author
This repo is a fork of [this project](https://github.com/thomasrPPS/Compilation_pj_Genty_Rio)

~~Started as a school project, I decided to fork this project to carry on, clarify its stucture and add the missing features.~~

We are both former embedded system student and enthusiast about working around low-level programming 

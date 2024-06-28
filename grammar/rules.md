# MiniC ruleset
This file describes the MiniC rules
> [!NOTE]
> This file is up to modification depending on project advancements
> Rules can change and evolve (or regress)

## What is MiniC ?
MiniC is a <u>subset of C</u>used fot simple program and as a proof-of-concept for a compiler. It has the same syntax.
MiniC allows global variables, a *main()* function, loops, branches and *print()*.
However, it is a very primitive language and thus its functionnalities are limited.

## Removed functionnalities
- **No functions** are allowed except the *main()*

 - **No pointers**, implying the language is strongly typed

- Currently impossible to add composite data types (such as **struct**, **typedef**, **union**)

- No support of **user inputs**

## About data types
### Supported
- **int** : based of *uint32_t* type, currently allow **ONLY** positive integrer in the range [0; 2<sup>32</sup> - 1]
	> Immediate **int** are limited to the range [0; 2<sup>16</sup> - 1] due to MIPS limitation on immediate instructions
	
- **bool** : classic boolean type : *true (1)* or *false (0)* 
- **void** : void type used for *main()* function
- Strings allowed in *print()* function

### Not Supported 
- **char** and **string <u>as variable</u>**
- **float** and **double**
- **short** 
- **unsigned** types

**Casting** variable is **not supported**

Variables propreties such as **volatile**, **register**, **packed**, **inline**, **static** and **extern** are **not implemented**.

## About loops and branches

### Supported 
These loops and branches have the same syntax as C
- *for*
- *while*
- *do{ ... }while*
- *if* 
	> *else* should be supported but is currently not implemented

### Not Supported 
- **switch / case**, 
- **break** and **continue**
- **label** and thus **goto**

## About operators
### Supported 
- **Arithmetic operators** ( +, -, /, *, %)
- **Bitwise operators**  (&, |, ~, ^)
- **Bit Shift operators** (>>, <<, >>>)
- **Logical operators** (&&, ||, !)
- **Conditionnal operators** (==, !=, <, >, <=, >=)
- **Direct Assignement** (=)
- **Comma** as a separator for definition and assignement 
> Ex : int a = 1 **,** int b = 2;
- **Comment** (//, /*...*/)

### Not Supported 
- **Incremental operators** (++, --)
- **Other type of assignement** (*=, +=, -=, ...)
- **All pointer operators**
- **Function calls** except *print()*
- **Comma**
- **Ternary conditional**
- ***sizeof*** and ***alignof***
- **Casting**




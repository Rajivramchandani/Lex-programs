# Lex Programs

A set of lex programs from the course : Compiler Construction Lab

## Installation of Flex on Ubuntu/WSL

1 . Update ubuntu packages:
```bash
sudo apt update
sudo apt upgrade
```

2 . Installing Flex and bison:
```bash
sudo apt install flex
sudo apt install bison
```

## Executing the lex programs

open your terminal in a suitable folder and run the following commands

```bash
git clone https://github.com/Rajivramchandani/Lex-programs.git
cd  Lex-programs
./run-and-delete.sh hello-world.l
```
and type "hi" in the terminal to see thr output "Hello World".
To exit, press ctrl+c.

the script 
```bash 
run-and-delete.sh
```

 basically runs 3 statements along with the file name, which are :
```bash
flex hello-world.l
gcc lex.yy.c -ll
./a.out
```
and deletes the output files after the operation is completed. 

if you would like to keep the output files in a folder then use the script

```bash
./run-and-keep.sh hello-world.l
```

To run any other lex program, replace *hello-world.l* with the selected lex file in the above mentioned shell commands 
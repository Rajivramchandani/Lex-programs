# Lex Programs

A set of lex programs from the course : Compiler Construction Lab

## Contents
- [Installation of Flex on Ubuntu/WSL](#Installation-of-Flex-on-Ubuntu/WSL)
- [Executing the lex programs](#Executing-the-lex-programs)
- [List and Description of Programs](#List-and-Description-of-Programs)
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
./run-and-delete.sh Hello-World/hello-world.l
```
and type "hi" in the terminal to see the output "Hello World".
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
./run-and-keep.sh Hello-World/hello-world.l
```

To run any other lex program, replace *hello-world.l* with the selected lex file and respective folder in the above mentioned shell commands 


**NOTE**: you can also run the programs by using cd to the respecive folders and using the following script format:
```bash 
../run-and-delete [FILE] [INPUT].
```
this method is better suited when running programs which require file inputs
## List and Description of Programs

| |  Programs  | Description |
|--|--|--|
| 1 | [Hello World](Hello-World) | Print "Hello World" whenever "hi" is given in the input |
| 2 | [Print given name when enter key is pressed](Print-name-enter-key) | Asks the user to input a name to output when the enter key is pressed. |
| 3 | [Vowels and Consonants](Vowels-consonants) | Count vowels and consonants from given input |
| 4 | [Capital Words](Capital-words) | Print only capital words in a given input |
| 5 | [Parentheses Check](Parentheses-check) | Check parentheses in a file with number of mismatches and also line number of mismatch |
| 6 | [Count Identifiers, keywords and etc](Count-identifiers-keywords-etc) | Count comments, keywords, identifiers, lines, words and spaces from an input file |
| 7 | [Words starting with A](Words-starting-with-A) | Count number of words starting with 'A' or 'a'|
| 8 | [Words starting with Vovels](Words-starting-with-vovels) | Count number of words starting with vovels |
| 9 | [Convert uppercase lowercase](Convert-uppercase-lowercase) | Convert uppercase to lowercase and vice versa |
| 10 | [Check valid Phone number](Check-valid-phone-number) | Check if the given number is a valid phone number |





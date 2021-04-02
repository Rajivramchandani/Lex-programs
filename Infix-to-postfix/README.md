## How to run :

```bash
flex infix-to-postfix.l
yacc -d infix-to-postfix.y
gcc lex.yy.c y.tab.c
./a.out
```

Try entering 2+6*2-5/3, 
it should give an output of 262*+53/-
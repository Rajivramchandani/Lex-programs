## How to run :

```bash
flex postfix-evaluation.l
bison postfix-evaluation.y
gcc postfix-evaluation.tab.c -lfl
./a.out
```

Try entering 7*(5-3)/2, it should give an output of 7 
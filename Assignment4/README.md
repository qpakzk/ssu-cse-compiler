# Assignment4 : Mid-term exam

## Problem 2

> Implement binary to decimal converter.

### Generate a parser

```sh
$ yacc -d yacc.y
```

> generate files __y.tab.c__ and __y.tab.h__.

### Generate a lexical analyzer

```sh
$ lex lex.l
```

> generate a file __lex.yy.c__.

### Compile and execute

```sh
$ gcc -o binary2decimal y.tab.c lex.yy.c
$ ./binary2decimal
```

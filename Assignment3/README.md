# Assignment3 : Print source program

## Generate a parser

```sh
$ yacc -d parse.y
```

* Ignore a warning message below:

```sh
parse.y: warning: 1 shift/reduce conflict [-Wconflicts-sr]
```

> generate files __y.tab.c__ and __y.tab.h__.

## Generate a lexical analyzer

```sh
$ lex scan.l
```

> generate a file __lex.yy.c__.

## Compile

```sh
$ gcc -m32 main.c print.c semantics.c syntax.c lex.yy.c y.tab.c
```

* If gcc prints errors on Ubuntu, install __gcc-multilib__ package.

```sh
$ sudo apt-get install gcc-multilib
```

* Ignore warning messages.

## Execute

```sh
$ ./a.out [TEST FILE]
```

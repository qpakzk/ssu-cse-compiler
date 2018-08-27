# Assignment2 : yacc & lex program

## Generate a parser using yacc

* files before using yacc

```sh
$ ls
main.c
symbol.c
symbol.h
yoo.l
yoo.y
```

* execute yacc

```sh
$ yacc -d yoo.y
```

* files after using yacc

```sh
$ ls
main.c
symbol.c
symbol.h
y.tab.c
y.tab.h
yoo.l
yoo.y
```

> Yacc generates files __y.tab.h__ and __y.tab.c__.

## Generate a lexical analyzer using lex

* files before using lex

```sh
$ ls
main.c
symbol.c
symbol.h
y.tab.c
y.tab.h
yoo.l
yoo.y
```

* execute lex

```sh
$ lex yoo.l
```

* files after using lex

```sh
$ ls
lex.yy.c
main.c
symbol.c
symbol.h
y.tab.c
y.tab.h
yoo.l
yoo.y
```

> Lex generates a file __lex.yy.c__.

* compile and execute

```sh
$ gcc lex.yy.c main.c symbol.c symbol.h y.tab.c y.tab.h
$ ./a.out
```

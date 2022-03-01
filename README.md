# Lab Week 2 Submission

My submission for CPSC 120-10, Lab Week 2

# My Information

* Name: Kyla Jang
* CWID: 888078243
* Email: kylajang@csu.fullerton.edu

# Scope Error

I recieved an error while trying to compile scope.cpp because I decarled a variable inside the nested scope but tried to assign a number to it outside the nested scope.

` ` `
scope.cpp: In function ‘int main()’:
scope.cpp:9:9: warning: unused variable ‘my_varible’ [-Wunused-variable]
    9 |     int my_varible;
      |         ^~~~~~~~~~
scope.cpp: At global scope:
scope.cpp:13:20: error: expected ‘,’ or ‘;’ at end of input
   13 | int  my_variable = 5
      |                    ^
make: *** [Makefile:157: scope.o] Error 1
```



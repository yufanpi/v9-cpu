#!/bin/sh
rm -f xc xem emhello funcall os0 os1 os2 os3
gcc -o xc -O3 -m32 -Ilinux -Iroot/lib root/bin/c.c
gcc -o xem -O3 -m32 -Ilinux -Iroot/lib root/bin/em.c -lm
./xc -o emhello -Iroot/lib root/usr/emhello.c
./xc -o funcall -Iroot/lib root/usr/funcall.c
./xc -o os0 -Iroot/lib root/usr/os/os0.c
./xc -o os1 -Iroot/lib root/usr/os/os1.c
./xc -o os2 -Iroot/lib root/usr/os/os2.c
./xc -o os3 -Iroot/lib root/usr/os/os3.c
./xc -o lab1 -Iroot/lib root/usr/os/lab1.c
./xc -o lab2 -Iroot/lib root/usr/os/lab2.c
./xem emhello
./xem funcall
./xem os0
./xem os1
./xem os2
./xem os3
./xem lab1
./xem lab2

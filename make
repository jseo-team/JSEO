qjsc -e jseo.file.js -o jseo.file.c
rm file.c
echo #include "dotNet.h" >file.c
cat jseo.file.c >>file.c
gcc file.c  libquickjs.a  -o file  -I../quickjs  -lpthread -ldl -lm


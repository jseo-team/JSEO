# JSEO
javascript entrypoint oriented

# setup
Setup the quickjs submodule
- download and extract latest source ::
https://bellard.org/quickjs/quickjs-2020-11-08.tar.xz
- :: to folder : ../quickjs
- :: compile with :: make ;;
(try CC=mingw-w64 for windows in Makefile)
- :: test with :: 

cd ~/JSEO;
../qjsc 


# compile with local script
./make

# Binaries available for
ARMhf (soon) 
::[ ARM64 ]:: de-activated
x86 (soon) 
Windows 32/64 (soon)

# usage
file hello.txt

# with bang (#!) on linux/termux
./hello.txt

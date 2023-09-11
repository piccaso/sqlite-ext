#! /bin/bash
set -e
set -x
FLAGS="-Ofast -I. -g -fPIC -shared"

# gcc win64
x86_64-w64-mingw32-gcc $FLAGS spellfix.c -o spellfix.gcc.dll

# gcc linux
gcc $FLAGS spellfix.c -o spellfix.gcc.so

# zig win64
zig cc -target x86_64-windows-gnu $FLAGS spellfix.c -o spellfix.zig.dll

# zig linux
zig cc -target x86_64-linux-gnu $FLAGS spellfix.c -o spellfix.zig.so
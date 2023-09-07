spellfix is from: https://github.com/sqlite/sqlite/blob/master/ext/misc/spellfix.c  
headers from: libsqlite3-dev (ubuntu 22.04 package)  

start: `docker-compose run --rm cli`

for win64:
```sh
x86_64-w64-mingw32-gcc -I. -g -fPIC -shared spellfix.c -o spellfix.dll
```

for linux:
```sh
gcc -g -fPIC -shared spellfix.c -o spellfix.so
```
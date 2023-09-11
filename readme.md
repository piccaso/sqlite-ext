## Build environment for spellfix1 sqlite extension
examples for `gcc` or (clang based) `zig cc`

start:
```sh
docker-compose run --rm cli
```

run `build.sh` or look inside for build instructions

---

spellfix is from: https://github.com/sqlite/sqlite/blob/master/ext/misc/spellfix.c  
headers from: libsqlite3-dev (ubuntu 22.04 package)  
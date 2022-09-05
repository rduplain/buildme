Project Name
------------

A highly contrived document for purposes of development.


### Section 1

Required programs:

* `git`
* `gcc`
* `make`
* ... and supporting "build essential" tools.

Make sure we make it to December:

* `cal 2022 | grep -q December`

Required:

* `python3`
* `/etc/hosts`
* `doc\sample.md`
* `curl --version | grep -q 'curl 7\.'`

Clone:

* git@github.com:rduplain/qwerty.sh.git including tags v0.5.2 and v0.6.3
* git@github.com:rduplain/poorman.git

Download:

* https://github.com/rduplain/reqd/archive/refs/tags/v2.2.tar.gz as reqd-2.2.tar.gz (SHA256: d07e9dbcec418aa925d6ed8885049569101e4e2dca0750002e9e69889f8c55d0)
* https://github.com/rduplain/reqd/archive/refs/tags/v2.1.tar.gz
* https://github.com/rduplain/reqd/archive/refs/tags/v2.0.tar.gz (arch: aarch64,x86_64; SHA256: 8fb3b4e459f143dd4a0bb16594315366d8f9b4934aa70d465c04d477ca90fc82)

Run:

    cd qwerty.sh
    git checkout v0.5.2

    git checkout v0.6.3 -- web
    make

<!-- creates: qwerty.sh, poorman, reqd-2.2.tar.gz, v2.0.tar.gz -->


### Section 2

This has nothing of interest.


### Section 3

Required programs:

* `ls`
* `ldd`
* Some coffee.
* `dpkg`

Make sure we make it to December (again):

* `cal 2022 | grep -q December`

Setup build:

```
mkdir -p build
cd build
```

Clone:

* git@github.com:rduplain/qwerty.sh.git tag v0.7
* git@github.com:rduplain/qwerty.sh.git as qwerty tag v0.7
* git@github.com:rduplain/reqd.git tags v2.0, v2.1, and v2.2
* git@github.com:rduplain/reqd.git as nixd including tag v2.0
* git@github.com:rduplain/poorman.git

Download:

1. https://github.com/rduplain/reqd/archive/refs/tags/v2.2.tar.gz as reqd-2.2.tar.gz (SHA256: d07e9dbcec418aa925d6ed8885049569101e4e2dca0750002e9e69889f8c55d0)
2. https://github.com/rduplain/reqd/archive/refs/tags/v2.0.tar.gz (arch: arm*; SHA256: 8fb3b4e459f143dd4a0bb16594315366d8f9b4934aa70d465c04d477ca90fc82)

Run:

```
cd qwerty.sh
make
```

<!-- creates: build -->
<!-- requires: Section 1 -->
<!-- requires: Section 1; creates: build -->

### Section 4

Run:

```
date
```

Run again:

```
date
```

<!-- require: Section 1, Section 3 -->


### Section 5

Run:

```
date
```

<!-- requires: Section 1 -->
<!-- requires: Section 3 -->


### Section 6

Require nothing.


### Section 7

Require:

* Nothing.


### Section 8

Still nothing here.


### Section 9

Log when the build completes:

```
date
```

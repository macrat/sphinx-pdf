sphinx-pdf
==========

My Docker image for generate PDF and HTML by [Sphinx](https://www.sphinx-doc.org)

[![Docker Hub](http://dockeri.co/image/macrat/sphinx-pdf)](https://hub.docker.com/r/macrat/sphinx-pdf)


## How to Use

### 1. Pull image

``` shell
$ docker pull macrat/sphinx-pdf
```

### 2. Make project

``` shell
$ docker run --rm -itv `pwd`:/docs macrat/sphinx-pdf sphinx-quickstart
$ ls
Makefile  _build  _static  _templates  conf.py  index.rst  make.bat
```

### 3. Build project

``` shell
$ docker run --rm -v `pwd`:/docs macrat/sphinx-pdf
```

In default, build PDF to `./_build/latex/` and build HTML to `./_build/html/`.

### 3: Alternate. Build only PDF

``` shell
$ docker run --rm -v `pwd`:/docs macrat/sphinx-pdf make latexpdf
```

Then you can see PDF in `./_build/latex/` directory.

Of course you can use `html` instead of `latexpdf` for build only HTML.

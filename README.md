Homebrew-avr
============

This repository contains the GNU AVR toolchain as formulae for
[Homebrew][].

AVR is a popular family of microcontrollers, used for example in the
[Arduino][] project.

Current Versions
----------------

-   `avr-gcc 4.8.2`
-   `binutils 2.24`
-   `avr-libc 1.8.0`
-   `avrdude 6.1`

Dependencies: `gmp`, `libmpc`, `mpfr` will be installed with `avr-gcc`.

Installing Homebrew-avr Formulae
--------------------------------

To install the entire AVR toolchain, you only need to:

``` {.shell}
$ brew tap WeAreLeka/avr && brew install avr-libc
```

This will pull in the prerequisites `avr-binutils` and `avr-gcc`.

Docs
----

`brew help`, `man brew`, or the Homebrew [wiki][].

  [Homebrew]: https://github.com/mxcl/homebrew
  [Arduino]: http://arduino.cc
  [wiki]: http://wiki.github.com/mxcl/homebrew

Homebrew-avr
============

This repository contains the GNU AVR toolchain as formulae for
[Homebrew][].

AVR is a popular family of microcontrollers, used for example in the
[Arduino][] project.

Current Versions
----------------

- `gcc 4.9.1`
- `binutils 2.24.0`
- `avr-libc 1.8.0`

Installing Homebrew-avr Formulae
--------------------------------

Just `brew tap WeAreLeka/avr` and then `brew install <formula>`.

To install the entire AVR toolchain, do:

```Bash
$ brew install avr-libc`
```

This will pull in the prerequisites `avr-binutils` and `avr-gcc`.

Docs
----

`brew help`, `man brew`, or the Homebrew [wiki][].

  [Homebrew]: https://github.com/mxcl/homebrew
  [Arduino]: http://arduino.cc
  [wiki]: http://wiki.github.com/mxcl/homebrew

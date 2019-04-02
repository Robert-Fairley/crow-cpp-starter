# crow-cpp-starter

This is a quick starter for an HTTP/S project using the [Crow](https://github.com/ipkn/crow) library for C++.

It's configured presently to draw includes from Homebrew-installed `libboost` version `1.68.0_1` on macOS/OSX. If you want
to compile using a different source for Boost you will have to modify the Makefile to point to the correct
directory.

If you run into compilation errors otherwise, consult the Crow documentation for any other requirements.

## Required for Building

* GCC/G++ ^4.2.1
* libboost 1.68.0_1

## Building

Standard build:
`make build`

Debug/Verbose build:
`make debug-build`

## Running

`make start`

## Utilities

* Cleanup: `make clean` - removes all of the compiled outputs.

## License

[MIT](/LICENSE)

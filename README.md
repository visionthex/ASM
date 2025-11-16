# ARM Assembly Setup & Testing Guide

This guide explains how to set up your environment for ARM assembly development, how to compile and run ARM programs using QEMU, and how to debug them using GDB. It also includes instructions for compiling C code for ARM and inspecting its assembly output.

## Installation

Install the required toolchain and utilities:

`sudo apt install build-essential gcc-arm-linux-gnueabihf qemu-user gdb-multiarch`

## Working With ARM Assembly

Compile Assembly

Compile your .s file for ARM without linking the standard library:

`arm-linux-gnueabihf-gcc -o filename filename.s -nostdlib -static`

Run the Program in QEMU (with GDB server enabled)

`qemu-arm -g 4242 ./filename`

This starts the program under QEMU and opens a GDB debugging port on 4242.

## Debugging With GDB

Open GDB in another terminal:

`gdb-multiarch`

Inside GDB:

```bash
file ./filename          # Load the binary
target remote localhost:4242  # Connect to QEMU
lay next                 # Enable the next-instruction layout
lay reg                  # Show registers
ni                       # Step through instruction
```

Useful GDB tips:

`si` — step into (single instruction)

`ni` — step over (single instruction)

`info reg` — print register values

## Compiling and Inspecting ARM C Code

Compile a C File for ARM:

`arm-linux-gnueabihf-gcc -o filename filename.c`

View the Generated Assembly:

`arm-linux-gnueabihf-objdump -d ./filename | less`


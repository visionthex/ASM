# ASM

Setup

`$ sudo apt install build-essential gcc-arm-linux-gnueabihf qemu-user gdb-multiarch`

```bash
arm-linux-gnueabihf-gcc -o filename filename.s -nostdlib -static
qemu-arm -g 4242 ./filename

gdb-multiarch
(gdb) file ./filename
(gdb) target remote localhost:4242
(gdb) lay next 	# to run the code in the environment
(gdb) lay reg 	# to see the registers of the code
(gdb) ni
```

Test C:

`arm-linux-gnueabihf-gcc -o filename filename.c`
`arm-linux-gnueabihf-objdump -d ./filename | less`
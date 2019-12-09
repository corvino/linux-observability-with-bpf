TOOLS=/usr/src/linux-headers-$(uname -r)/tools
INCLUDES=-I${TOOLS}

# Where is the -02 on this? Doesn't seem to work in Ubuntu.
clang -target bpf -c hello_world_bpf.c -o hello_world_bpf.o

clang -o loader -l elf ${INCLUDES} loader.c

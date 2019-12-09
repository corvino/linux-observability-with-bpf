#include <stdio.h>
// There is an open issue for this nonsense here: https://github.com/iovisor/bcc/issues/2325
#include <uapi/linux/bpf.h>

int main(int argc, char **argv) {
    if (0 != load_bpf_file("hello_world_kren.o")) {
        printf("The kernel didn't load the BPF program\n");
        return -1;
    }

    read_trace_pipe();

    return 0;
}

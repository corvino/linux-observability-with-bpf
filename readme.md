This is an attempt to get the code examples for running from the Book [
Linux Observability with BPF](http://shop.oreilly.com/product/0636920242581.do).

From this first substantive chapter, this book seems to be a nightmare. There are no instructions on bpf installation, which looks ike it is necassry. THe build scripts includes path-relative references with no reference to where the file should be run from.

This Vagrant setup represents some progress, but still has a substantial ways to go before the example compiles and runs. This is not what I would expect from an introductory chapter on a fairly technical topic.

### Installation References:

[bcc](https://github.com/iovisor/bcc/blob/master/INSTALL.md)
[bpftrace](https://github.com/iovisor/bpftrace/blob/master/INSTALL.md)

### Provisioning

For package installation, see `provision.sh`.

### Code Deploy

Done through ansible, in playbooks/deployCode.yml. Run as a Vagrant provisioner.

### Build

`code/chap2/build.sh` attempts to build the hello world program. Doesn't work due to insufficient information.

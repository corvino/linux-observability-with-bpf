echo "apt update"
apt update # > /dev/null 2&>1

echo "install packages"
apt install -y clang bpftrace bpfcc-tools linux-headers-$(uname -r) linux-source

pushd /usr/include/
sudo ln -s asm-generic asm
popd

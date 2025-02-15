sudo apt install clang lld bison flex make python3 binutils binutils-aarch64-linux-gnu binutils-arm-linux-gnueabihf git -y
git clone https://gitlab.com/mmqmemm/android_kernel_oppo_msm8937 -b staging/lineage-19.1-msm8953 --depth=1 export 
PATH=/home/miao/clang-r416183b1/bin:$PATH export 
PATH=/home/miao/android-ndk-r16-beta1/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH export 
PATH=/home/miao/android-ndk-r16-beta1/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$PATH
make -j$(nproc) ARCH=arm64  CC=clang LD=ld.lld HOSTCC=clang HOSTLD=ld.lld O=out KCFLAGS+=-Wno-error merge_hi6250_defconfig all

# armbian-bootsplash

Armbian bootsplash generator, extracted from armbian build tools

## Requirements

Install the linux headers for your platform using `armbian-config`.

## Usage

Clone the repo:

```shell
git clone https://github.com/mtgrosser/armbian-bootsplash.git
cd armbian-bootsplash
```

Then place your image in the repo dir as `logo.png`.

Make the `bootsplash-packer` executable:

```shell
make
```

Build the bootsplash.armbian splash file:

```shell
./makebootsplash.sh
```

Install the bootsplash:

```shell
mkdir -p /usr/local/lib/firmware
cp bootsplash.armbian /usr/local/lib/firmware
```

Modify the bootsplash initramfs hook, updating the `splashfile` variable:

```shell
#!/bin/sh
# Copy splash file to initrd
#
mkdir -p "${DESTDIR}"/lib/firmware
splashfile=/usr/local/lib/firmware/bootsplash.armbian

if [ -f "${splashfile}" ]; then
        cp "${splashfile}" "${DESTDIR}"/lib/firmware
fi

exit 0
```

Update the initramfs:

```shell
update-initramfs -v -u
```

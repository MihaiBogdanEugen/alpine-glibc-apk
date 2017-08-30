# glibc-builder
## Alpine Liux package for the GNU C Library (glibc)
### Usage

1. Build the image and start the container
```shell
make build
```

2. Generate RSA keys
```shell
~/bin/setup-keys.sh 
```

3. Go to the folder that contains the APKBUILD file
```shell
cd /work/alpine-glibc-apk/
```

4. Rebuild checksums
```shell
abuild checksum
```

5. Rebuild checksums
```shell
abuild -c -r -P /target
```

6. Go to the output folder
```shell
cd /target/work/x86_64
```

7. Index the packages
```shell
apk index -o APKINDEX.tar.gz *.apk
```

8. Sign the packages
```shell
abuild-sign APKINDEX.tar.gz
```

9. Exit the docker image
```shell
exit
```

10. (Optional) Test the packages by building and starting the test image
```shell
make test
```

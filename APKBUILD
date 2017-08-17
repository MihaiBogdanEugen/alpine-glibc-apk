pkgname="glibc"
pkgver="2.26"
pkgdesc="Alpine Liux package for the GNU C Library (glibc)"
arch="x86_64"
url="https://github.com/MihaiBogdanEugen/alpine-glibc-apk"
license="GPL"
source="https://github.com/MihaiBogdanEugen/glibc-builder/releases/download/$pkgver/glibc-bin-$pkgver.tar.gz
nsswitch.conf
ld.so.conf"
subpackages="$pkgname-bin $pkgname-dev $pkgname-i18n"
triggers="$pkgname-bin.trigger=/lib:/usr/lib:/usr/glibc-compat/lib"

package() {
  mkdir -p "$pkgdir/lib" "$pkgdir/lib64" "$pkgdir/usr/glibc-compat/lib/locale" "$pkgdir"/etc
  cp -a "$srcdir"/usr "$pkgdir"
  cp "$srcdir"/nsswitch.conf "$pkgdir"/etc/nsswitch.conf
  cp "$srcdir"/ld.so.conf "$pkgdir"/usr/glibc-compat/etc/ld.so.conf
  rm "$pkgdir"/usr/glibc-compat/etc/rpc
  rm -rf "$pkgdir"/usr/glibc-compat/bin
  rm -rf "$pkgdir"/usr/glibc-compat/sbin
  rm -rf "$pkgdir"/usr/glibc-compat/lib/gconv
  rm -rf "$pkgdir"/usr/glibc-compat/lib/getconf
  rm -rf "$pkgdir"/usr/glibc-compat/lib/audit
  rm -rf "$pkgdir"/usr/glibc-compat/share
  rm -rf "$pkgdir"/usr/glibc-compat/var
  ln -s /usr/glibc-compat/lib/ld-linux-x86-64.so.2 ${pkgdir}/lib/ld-linux-x86-64.so.2
  ln -s /usr/glibc-compat/lib/ld-linux-x86-64.so.2 ${pkgdir}/lib64/ld-linux-x86-64.so.2
  ln -s /usr/glibc-compat/etc/ld.so.cache ${pkgdir}/etc/ld.so.cache
}

bin() {
  depends="$pkgname libgcc"
  mkdir -p "$subpkgdir"/usr/glibc-compat
  cp -a "$srcdir"/usr/glibc-compat/bin "$subpkgdir"/usr/glibc-compat
  cp -a "$srcdir"/usr/glibc-compat/sbin "$subpkgdir"/usr/glibc-compat
}

i18n() {
  depends="$pkgname-bin"
  arch="noarch"
  mkdir -p "$subpkgdir"/usr/glibc-compat
  cp -a "$srcdir"/usr/glibc-compat/share "$subpkgdir"/usr/glibc-compat
}

md5sums="b0ba295076c67ece15500d33c32d4b88  glibc-bin-2.25.tar.gz
bfcd5d6f549d676a21a9c44e86083900  nsswitch.conf
1d14bced1cfea5e2cf0b7f2afb23d394  ld.so.conf"

sha256sums="bb43d821898966ddb1b8205a01f766232e3e9b5e6e17abd5ae673bfb02ae86d9  glibc-bin-2.25.tar.gz
7b31e108b270e7efeb2ef728c8fff819629793bb9239519742391d7096441b75  nsswitch.conf
f5c2c200fb20f05202132aa09c1d30d09e16b7970beaf11b3c2834f91a59ca85  ld.so.conf"

sha512sums="845186027a20e27e78f4f1b194c3861bce9f8f4911ebcde5b3ee4ab28f3b9a88b7499ab2f9e83347d6cf660cff64d4a2b74727e4924529dfcf8b03495963d7d9  glibc-bin-2.25.tar.gz
6db20bcf411050745ae380c043b22f63079b6344e12ff6232888357859b8ee561bcc583dca15c01760d5f8ead3eb36ca479397f80232bf2a393d88b26065479b  nsswitch.conf
ce1231645a3689f5587a2c45a68936062fb8a3b420a3054aeba83bbfa554d96c51379c6e2d790905a21987c02435ee4df6a43244f4fee0afe991fce3e28eb801  ld.so.conf"
export OPENSSL_VERSION="openssl-3.0.15"
export OPENSSL_SHA256="23c666d0edf20f14249b3d8f0368acaee9ab585b09e1de82107c66e1f3ec9533"
# We need a base set of flags because on Windows using MSVC
# enable-ec_nistp_64_gcc_128 doesn't work since there's no 128-bit type
export OPENSSL_BUILD_FLAGS_WINDOWS="no-ssl3 no-ssl3-method no-zlib no-shared no-sm2 no-sm3 no-sm4 no-rc2 no-rc4 no-idea no-gost no-md4 no-whirlpool no-aria no-camellia no-cast no-chacha no-poly1305 no-cmac no-bf no-blake2 no-ec2m no-mdc2 no-ocb no-rmd160 no-seed no-siphash no-siv no-md2 no-rc5 no-capieng no-dynamic-engine no-engine no-loadereng no-padlockeng no-static-engine no-legacy no-deprecated no-autoload-config no-cmp no-cms no-ocsp no-rfc3779 no-ts no-comp no-ct no-sock enable-fips"
export OPENSSL_BUILD_FLAGS="${OPENSSL_BUILD_FLAGS_WINDOWS}"

export OPENSSL_VERSION="openssl-3.1.1"
export OPENSSL_SHA256="b3aa61334233b852b63ddb048df181177c2c659eb9d4376008118f9c08d07674"
# We need a base set of flags because on Windows using MSVC
# enable-ec_nistp_64_gcc_128 doesn't work since there's no 128-bit type
export OPENSSL_BUILD_FLAGS_WINDOWS="no-sm2 no-sm3 no-sm4 no-rc2 no-rc4 no-idea no-gost no-md4 no-whirlpool no-aria no-camellia no-cast no-chacha no-poly1305 no-cmac no-bf no-blake2 no-ec2m no-mdc2 no-ocb no-rmd160 no-seed no-siphash no-siv no-md2 no-rc5 no-capieng no-dynamic-engine no-engine no-loadereng no-padlockeng no-static-engine no-legacy no-deprecated no-autoload-config no-cmp no-cms no-ocsp no-rfc3779 no-ts no-comp no-ct no-sock enable-fips"
export OPENSSL_BUILD_FLAGS="${OPENSSL_BUILD_FLAGS_WINDOWS}"

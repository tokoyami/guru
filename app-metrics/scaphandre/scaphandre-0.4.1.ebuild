# Copyright 2017-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
adler32-1.2.0
aho-corasick-0.7.15
ansi_term-0.11.0
ansi_term-0.12.1
async-channel-1.6.1
atty-0.2.14
autocfg-1.0.1
base-x-0.2.8
base64-0.13.0
bitflags-1.2.1
bumpalo-3.6.1
byteorder-1.4.3
bytes-1.0.1
cache-padded-1.1.1
cc-1.0.67
cfg-if-1.0.0
chrono-0.4.19
clap-2.33.3
colored-2.0.0
concurrent-queue-1.2.2
const_fn-0.4.6
crc32fast-1.2.1
crossbeam-utils-0.8.3
curl-0.4.38
curl-sys-0.4.47+curl-7.79.0
dirs-3.0.2
dirs-sys-0.3.6
discard-1.0.4
docker-sync-0.1.2
docopt-1.1.1
dtoa-0.4.8
encoding_rs-0.8.28
event-listener-2.5.1
fastrand-1.4.0
fnv-1.0.7
foreign-types-0.3.2
foreign-types-shared-0.1.1
form_urlencoded-1.0.1
futures-channel-0.3.13
futures-core-0.3.13
futures-io-0.3.13
futures-lite-1.11.3
futures-sink-0.3.13
futures-task-0.3.13
futures-util-0.3.13
getrandom-0.2.3
h2-0.3.4
hashbrown-0.9.1
hermit-abi-0.1.18
hex-0.4.3
hostname-0.3.1
http-0.2.4
http-body-0.4.3
httparse-1.5.1
httpdate-1.0.1
hyper-0.14.13
idna-0.2.2
indexmap-1.6.2
instant-0.1.9
isahc-1.5.0
itoa-0.4.7
js-sys-0.3.49
k8s-openapi-0.13.0
k8s-sync-0.2.3
lazy_static-1.4.0
libc-0.2.102
libflate-1.0.4
libflate_lz77-1.0.0
libnghttp2-sys-0.1.6+1.43.0
libz-sys-1.1.2
linked-hash-map-0.5.4
lock_api-0.4.2
log-0.4.14
loggerv-0.7.2
match_cfg-0.1.0
matches-0.1.8
memchr-2.3.4
mime-0.3.16
mio-0.7.13
miow-0.3.7
ntapi-0.3.6
num-integer-0.1.44
num-traits-0.2.14
num_cpus-1.13.0
once_cell-1.7.2
openssl-0.10.36
openssl-probe-0.1.2
openssl-sys-0.9.66
ordered-float-2.8.0
parking-2.0.0
parking_lot-0.11.1
parking_lot_core-0.8.3
percent-encoding-2.1.0
pin-project-1.0.6
pin-project-internal-1.0.6
pin-project-lite-0.2.6
pin-utils-0.1.0
pkg-config-0.3.19
polling-2.0.3
ppv-lite86-0.2.10
proc-macro-hack-0.5.19
proc-macro2-1.0.24
procfs-0.8.1
protobuf-2.22.1
quote-1.0.9
rand-0.8.4
rand_chacha-0.3.1
rand_core-0.6.3
rand_hc-0.3.1
redox_syscall-0.2.5
redox_users-0.4.0
regex-1.4.5
regex-syntax-0.6.23
remove_dir_all-0.5.3
riemann_client-0.9.0
ring-0.16.20
rle-decode-fast-1.0.1
rustc_version-0.2.3
rustls-0.19.0
rustls-pemfile-0.2.0
ryu-1.0.5
schannel-0.1.19
scopeguard-1.1.0
sct-0.6.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.130
serde-value-0.7.0
serde_derive-1.0.130
serde_json-1.0.64
serde_yaml-0.8.21
sha1-0.6.0
signal-hook-registry-1.3.0
slab-0.4.2
sluice-0.5.4
smallvec-1.6.1
socket2-0.4.2
spin-0.5.2
standback-0.2.17
stdweb-0.4.20
stdweb-derive-0.5.3
stdweb-internal-macros-0.2.9
stdweb-internal-runtime-0.1.5
strsim-0.10.0
strsim-0.8.0
syn-1.0.65
tempfile-3.2.0
textwrap-0.11.0
time-0.1.44
time-0.2.26
time-macros-0.1.1
time-macros-impl-0.1.1
tinyvec-1.1.1
tinyvec_macros-0.1.0
tokio-1.11.0
tokio-macros-1.3.0
tokio-util-0.6.8
tower-service-0.3.1
tracing-0.1.25
tracing-attributes-0.1.15
tracing-core-0.1.17
tracing-futures-0.2.5
try-lock-0.2.3
unicode-bidi-0.3.4
unicode-normalization-0.1.17
unicode-width-0.1.8
unicode-xid-0.2.1
untrusted-0.7.1
url-2.2.2
vcpkg-0.2.11
vec_map-0.8.2
version_check-0.9.3
waker-fn-1.1.0
want-0.3.0
warp10-1.0.0
wasi-0.10.0+wasi-snapshot-preview1
wasm-bindgen-0.2.72
wasm-bindgen-backend-0.2.72
wasm-bindgen-macro-0.2.72
wasm-bindgen-macro-support-0.2.72
wasm-bindgen-shared-0.2.72
web-sys-0.3.49
webpki-0.21.4
webpki-roots-0.21.0
wepoll-sys-3.0.1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
yaml-rust-0.4.5
"

inherit cargo linux-info

CONFIG_CHECK="~CONFIG_INTEL_RAPL"

DESCRIPTION="Electrical power consumption measurement agent."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/hubblo-org/scaphandre"
SRC_URI="https://github.com/hubblo-org/${PN}/archive/refs/tags/v${PV}.zip -> ${P}.zip $(cargo_crate_uris ${CRATES})"
# restricting test because '/proc/modules' does not appear to be present in the CI
RESTRICT="mirror test"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Apache-2.0 ISC MIT MPL-2.0 Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

DEPEND=""
RDEPEND=""
QA_FLAGS_IGNORED="usr/bin/scaphandre"

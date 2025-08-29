# hdwallet_service
Hdwallet service

![Pub Version (including pre-releases)](https://img.shields.io/pub/v/hdwallet_service)

## Setup and Tools

1. Add Rust build targets

#### For Android

```sh
rustup target add aarch64-linux-android armv7-linux-androideabi x86_64-linux-android i686-linux-android
```

#### For iOS

```sh
rustup target add aarch64-apple-ios x86_64-apple-ios
```

2. Cargo Plugins

```sh
cargo install --no-default-features --force cargo-make
```

we also use [`dart-bindgen`](https://github.com/sunshine-protocol/dart-bindgen) which requires LLVM/Clang. Install LLVM (10+) in the following way:

#### ubuntu/linux
1. Install libclangdev - `sudo apt-get install libclang-dev`.

#### Windows
1. Install Visual Studio with C++ development support.
2. Install [LLVM](https://releases.llvm.org/download.html) or `winget install -e --id LLVM.LLVM`.

#### MacOS
1. Install Xcode.
2. Install LLVM - `brew install llvm`.


## Build and Test

In the Root of the project simply run:

```sh
cd native
cargo make --profile release
```

Update tcx
```sh
cargo update -p tcx
```

## Generate protobuf type
Install `protoc` [Download here](https://github.com/protocolbuffers/protobuf/releases)
```
dart pub global activate protoc_plugin
protoc --dart_out=./gen *.proto
```
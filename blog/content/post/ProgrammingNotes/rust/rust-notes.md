+++
title = "Rust Notes"
date = "2019-2-22T14:00:00"
tags = ["rust","rust notes"]
categories = ["rust"]
banner = "images/blog/vscode-debug-screen.png"
+++

# Rust Notes

## Rust playground website 

https://play.rust-lang.org/

## Tutorials websites

https://stevedonovan.github.io/rust-gentle-intro/1-basics.html


## Setup dev env

https://hoverbear.org/2017/03/03/setting-up-a-rust-devenv/

## Setup rust with Rustup

website https://rustup.rs/

website on how to use it https://rust-lang-nursery.github.io/edition-guide/rust-2018/rustup-for-managing-rust-versions.html

```bash
curl https://sh.rustup.rs -sSf | sh
```

location of all rustup install and files $HOME/.cargo/bin 

## Rustup use

Install bash completions (Optional)

```bash
rustup completions bash > /etc/bash_completion.d/rustup.bash-completion 
```

Updating rustup

```bash
rustup self update
```
Install stable toolchain

```bash
rustup install stable
```

## Nightly

Install Nightly toolchain

```bash
rustup install nightly
```

Set Nightly as default

```bash
rustup default nightly
```
updating rust toolchains

```bash
rustup update
```

## Rustup Components

List components which can be installed on your system

```bash
rustup component list
```

## Install components

Install clippy tool used for compiling code with hints

```bash
rustup component add clippy
```

Install rust-fmt tool used for auto code formatting

```bash
rustup component add rust-fmt
```
Install rls tool used for rust lanuage server for ide's

```bash
rustup component add rls
```

## IDE tools

racer https://github.com/racer-rust/racer - Code completeion

Install with cargo

```bash
cargo +nightly install racer
```

## Tools

### Cargo-bloat
website https://github.com/RazrFalcon/cargo-bloat

Install cargo-bloat tool
```bash
cargo install cargo-bloat
```

To get size of the release
```bash
cargo bloat --release
```

website https://github.com/dtolnay/cargo-expand
Install cargo expand to expand code to the std output 

```bash
cargo install cargo-expand
```

Run expand

```bash
cargo expand
```

# make binary size smaller

File `Cargo.toml` add to bottom of the file.

```toml
[profile.release]
debug = false
lto = true
opt-level = 'z'
```

Remove debug symbols from the binary to make it smaller
```bash
strip -d rustbinary
```
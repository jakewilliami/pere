curl -s https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml > ./src/languages.yml
MODE="release"  # previously: "debug"
cargo build --$MODE
strip ./target/$MODE/$(basename "$PWD")
cp -f ./target/$MODE/$(basename "$PWD") ./

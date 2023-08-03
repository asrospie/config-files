echo "Mac or Linux? (mac/linux)"

read os
# rust lsp

if [$os = "linux"]
then
    mkdir -p ~/.local/bin
    curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
    chmod +x ~/.local/bin/rust-analyzer
elif [$os = "mac"] 
then
    mkdir -p ~/usr/local/bin
    curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-aarch64-apple-darwin.gz | gunzip -c - > ~/.local/bin/rust-analyzer
    chmod +x ~/usr/local/bin/rust-analyzer
else
    echo "OS not found."
fi

# python lsp
python3 -m pip install --upgrade pip
pip install pyright

echo "It is recommended to restart your shell now."
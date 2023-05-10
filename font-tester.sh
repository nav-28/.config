#/bin/bash

# Taken from https://gist.githubusercontent.com/elijahmanor/c10e5787bf9ac6b8c276e47e6745826c/raw/062c71dfd77408e71025382db81c148843d9607a/smoke-test.sh

# Test fonts and special characters
# Only works with nerd fonts
echo "Normal"
echo "\033[1mBold\033[22m"
echo "\033[3mItalic\033[23m"
echo "\033[3;1mBold Italic\033[0m"
echo "\033[4mUnderline\033[24m"
echo "== === !== >= <= =>"
echo "契          勒 鈴 "

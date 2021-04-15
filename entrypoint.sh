#!/usr/bin/env sh

KUBE_LINTER_VERSION=$1
LINT_TARGET=$2

KUBE_LINTER_URL="https://github.com/stackrox/kube-linter/releases/download/$KUBE_LINTER_VERSION/kube-linter-linux.tar.gz"

curl -L -s -o kube_linter.tar.gz "$KUBE_LINTER_URL"

tar xzf kube_linter.tar.gz kube-linter

mv kube-linter /usr/local/bin

rm kube_linter.tar.gz

kube-linter lint "$LINT_TARGET"

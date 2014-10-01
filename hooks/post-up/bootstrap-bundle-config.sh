#!/bin/sh

if [ ! -f ~/.bundle/config ] ; then
  mkdir -p ~/.bundle
  cat <<EOF > ~/.bundle/config
---
BUNDLE_PATH: vendor/bundle
EOF
fi

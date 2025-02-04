set -e
npm update -g corepack
corepack enable
corepack install --global pnpm@10
corepack disable yarn

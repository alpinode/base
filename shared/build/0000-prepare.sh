set -e

release=$(cut -d"." -f1,2 /etc/alpine-release)

cat <<EOF >/etc/apk/repositories
https://dl-cdn.alpinelinux.org/alpine/v$release/main/
https://dl-cdn.alpinelinux.org/alpine/v$release/community/
EOF

apk -U upgrade

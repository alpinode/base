set -e

apk add --no-cache \
  bash=~5 \
  bash-completion=~2 \
  ;

cat <<'EOF' >>/etc/profile.d/generic.sh
export HISTCONTROL="ignoreboth:erasedups"
export EDITOR="nvim"
EOF

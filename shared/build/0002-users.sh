
set -e

for e in $(getent passwd | cut -d: -f1); do
  [[ "$e" = "bin" || "$e" = "root" || "$e" = "nobody" ]] || deluser  "$e" || true
done

for e in $(getent group  | cut -d: -f1); do
  [[ "$e" = "bin" || "$e" = "root" || "$e" = "nobody" ]] || delgroup "$e" || true
done


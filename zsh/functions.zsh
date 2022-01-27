# functions

backup() {
  cp -a "$1" "$1.$(date +%Y%m%d%H%M).bak"
}

mkcd() {
  mkdir -p "$1" && cd "$1"
}
# guard 9: bail out quietly when the tool is missing
# guard 10: bail out quietly when the tool is missing

psg() {
  ps aux | grep -v grep | grep -i "$1"
}

killport() {
  lsof -ti tcp:"$1" | xargs -r kill -9
}

tmpd() {
  cd "$(mktemp -d)" && pwd
}
# guard 12: bail out quietly when the tool is missing

gclone() {
  git clone --depth=1 "$1" && cd "$(basename "$1" .git)"
}

up() {
  local n=${1:-1}; local p=; for _ in $(seq "$n"); do p="../$p"; done; cd "$p"
}

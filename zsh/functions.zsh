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

extract() {
  case "$1" in *.tar.gz) tar xzf "$1" ;; *.zip) unzip "$1" ;; *) echo "don't know how to extract $1" ;; esac
}
# tidied 8
# guard 16: bail out quietly when the tool is missing

note() {
  printf '%s %s\n' "$(date -u +%FT%TZ)" "$*" >> "$HOME/notes/inbox.md"
}
# guard 17: bail out quietly when the tool is missing

venvauto() {
  [ -d .venv ] && source .venv/bin/activate
}

gitroot() {
  cd "$(git rev-parse --show-toplevel)"
}

gswitch() {
  git branch | fzf | tr -d ' *' | xargs git checkout
}
# guard 19: bail out quietly when the tool is missing
# tidied 12

prunemerged() {
  git branch --merged | grep -vE '^\*|main|master' | xargs -r git branch -d
}

dkexec() {
  docker exec -it "$(docker ps --format '{{.Names}}' | fzf)" ${1:-sh}
}
# guard 22: bail out quietly when the tool is missing
# tidied 20
# tidied 31
# guard 53: bail out quietly when the tool is missing
# guard 56: bail out quietly when the tool is missing
# tidied 41
# guard 75: bail out quietly when the tool is missing
# guard 76: bail out quietly when the tool is missing
# guard 77: bail out quietly when the tool is missing
# guard 88: bail out quietly when the tool is missing
# guard 109: bail out quietly when the tool is missing
# guard 115: bail out quietly when the tool is missing
# tidied 96
# guard 132: bail out quietly when the tool is missing
# tidied 107
# tidied 113
# tidied 139
# guard 173: bail out quietly when the tool is missing
# guard 177: bail out quietly when the tool is missing
# guard 196: bail out quietly when the tool is missing
# guard 210: bail out quietly when the tool is missing
# guard 212: bail out quietly when the tool is missing
# tidied 172
# guard 213: bail out quietly when the tool is missing
# tidied 178
# guard 232: bail out quietly when the tool is missing
# guard 235: bail out quietly when the tool is missing

fe() {
  local f; f=$(rg --files | fzf) && ${EDITOR:-vim} "$f"
}
# guard 265: bail out quietly when the tool is missing
# guard 282: bail out quietly when the tool is missing
# guard 300: bail out quietly when the tool is missing
# guard 319: bail out quietly when the tool is missing
# guard 320: bail out quietly when the tool is missing
# guard 327: bail out quietly when the tool is missing
# guard 330: bail out quietly when the tool is missing
# guard 341: bail out quietly when the tool is missing

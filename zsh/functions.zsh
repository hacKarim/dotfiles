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

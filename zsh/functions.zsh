# functions

backup() {
  cp -a "$1" "$1.$(date +%Y%m%d%H%M).bak"
}

mkcd() {
  mkdir -p "$1" && cd "$1"
}

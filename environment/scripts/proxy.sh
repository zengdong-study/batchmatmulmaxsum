# 在 Bash 中通过 source 使用，使配置作用于当前终端。
proxy_on() {
  local url="${1:-http://127.0.0.1:7897}"
  case "$url" in
    http://*|https://*|socks5://*|socks5h://*) ;;
    *) printf '%s\n' '请输入完整代理地址，例如 http://127.0.0.1:7897' >&2; return 1 ;;
  esac
  export http_proxy="$url" https_proxy="$url" HTTP_PROXY="$url" HTTPS_PROXY="$url"
  export all_proxy="$url" ALL_PROXY="$url"
  export no_proxy="localhost,127.0.0.1,::1" NO_PROXY="localhost,127.0.0.1,::1"
  printf '%s\n' '当前终端代理已启用。'
}
proxy_off() {
  unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY all_proxy ALL_PROXY no_proxy NO_PROXY
  printf '%s\n' '当前终端代理环境变量已清除。'
}
proxy_status() {
  # 仅显示是否设置，避免意外打印代理中的用户名或密码。
  local key
  for key in http_proxy https_proxy HTTP_PROXY HTTPS_PROXY all_proxy ALL_PROXY no_proxy NO_PROXY; do
    if [[ -n ${!key:-} ]]; then printf '%s=已设置\n' "$key"; else printf '%s=未设置\n' "$key"; fi
  done
}

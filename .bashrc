PROXY="https://proxysrv:8080"
NOPROXY="example.com,localhost,127.0.0.1"

proxy () {
    case $1 in
        'on')
            export HTTP_PROXY="${PROXY}"
            export HTTPS_PROXY="${PROXY}"
            export FTP_PROXY="${PROXY}"
            export SOCKS_PROXY="${PROXY}"
            export NO_PROXY="${NOPROXY}"
            ;;
        'off')
            unset HTTP_PROXY HTTPS_PROXY FTP_PROXY SOCKS_PROXY NO_PROXY
            ;;
        *)
            echo "Proxyerror - usage: proxy on|off"
            ;;
    esac
}

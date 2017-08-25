PROXY="none"
NOPROXY="example.com,localhost,127.0.0.1"

proxy () {
    case $1 in
        'on')
            PROXY=${PROXY}
            export HTTP_PROXY=${PROXY} HTTPS_PROXY=${PROXY} NO_PROXY=${NO_PROXY}
            ;;
        'off')
            unset ${PROXY}
            unset ${NOPROXY}
            ;;
        *)
            echo "Proxyerror - usage: proxy on|off"
            ;;
    esac
}


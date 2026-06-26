enable_ccache() {
    local ccache_dir="$HOME/CCACHE/.ccache"
    if [[ ! -d "$ccache_dir" ]]; then
        echo -e "\e[34m[INFO]\e[0m Creating ccache directory at $ccache_dir"
        mkdir -p "$ccache_dir"
    fi
    export USE_CCACHE=1
    export CCACHE_EXEC="$(command -v ccache)"
    export CCACHE_DIR="$ccache_dir"
    export CCACHE_NOCOMPRESS=true
    echo -e "\e[32m[INFO]\e[0m ccache enabled using directory $ccache_dir"
}

enable_ccache

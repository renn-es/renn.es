[ -z "$out" ] && {
    echo 'Please run this script through "nix build". Exiting.'
    exit 1
}

buildPhase() {
    mkdir "$out"
    grass style.sass > "$out"/style.css

    find pages/ -type f |
        while read -r file; do
            path="${file#pages/}"
            path="${path%.md}"
            path="${path%index}"
            mkdir -p "$out/$path"
            {
                sed -e '/==MAIN==/,$d' base.html
                cmark --unsafe "$file"
                sed -e '1,/==MAIN==/d' base.html
            } > "$out/$path/index.html"
        done

    cp -r static/. "$out"/
}

genericBuild

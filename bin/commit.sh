clear

ROOT_PACKAGE_JSON="$(git rev-parse --show-toplevel)/package.json"

echo $ROOT_PACKAGE_JSON

if test -f "$ROOT_PACKAGE_JSON"; then
    has_commitizen="$(gron package.json | grep "devDependencies\.commitizen" | gron --ungron)"
    exit_code=$?

    echo "Exit: $exit_code"

    if [ $? = 0 ]; then
        yarn run git-cz
    else
        git commit
    fi
else
    git commit
fi

clear

ROOT_PACKAGE_JSON="$(git rev-parse --show-toplevel)/package.json"

if test -f "$ROOT_PACKAGE_JSON"; then
    if [ $(jq ".devDependencies | has(\"commitizen\")" $ROOT_PACKAGE_JSON) = "true" ]; then
        yarn run git-cz
    else
        git commit
    fi
else
    git commit
fi

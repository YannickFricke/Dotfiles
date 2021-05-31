clear

git commit

# if [ `jq ".devDependencies | has(\"commitizen\")" $(git rev-parse --show-toplevel)/package.json` = "true" ]; then
# 	yarn run git-cz
# else
# 	git commit
# fi

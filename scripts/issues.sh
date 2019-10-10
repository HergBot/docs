echo ''
echo 'This script will remove the GitHub default labels and create the Array Digital process labels for your repo. A personal access token is required to access private repos.'

echo ''
echo -n 'GitHub Personal Access Token: '
read -s TOKEN

echo ''
echo -n 'GitHub Org/Repo (e.g. foo/bar): '
read REPO

REPO_USER=$(echo "$REPO" | cut -f1 -d /)
REPO_NAME=$(echo "$REPO" | cut -f2 -d /)

# Delete default labels
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/bug
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/documentation
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/duplicate
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/enhancement
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/help%20wanted
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/good%20first%20issue
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/invalid
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/question
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/wontfix

#create state labels
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"abandoned","color":"000000","description":"This issue has been abandoned and is no longer applicable."}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"blocked","color":"696969","description":"This issue is blocked by another issue"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"needs info","color":"C1133E","description":"This issue needs information from an external source"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"analysis","color":"FFFF00","description":"This issue is in the planning procress"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"ready","color":"008000","description":"This issue is ready for development"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"development","color":"0000FF","description":"This issue is in active development"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"review","color":"5119E7","description":"This issue is complete and ready to be reviewed before being released"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"done","color":"FFFFFF","description":"This issue is complete and has been released"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

#create category labels
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"bug","color":"FF0000","description":"A bug found in an existing part of the project"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"documentation","color":"FF00FF","description":"A piece of documentation that needs to be written"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"feature","color":"00FF00","description":"A new addition to the project that requires programming/design"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"refactor","color":"00FFFF","description":"A change to an existing, functional part of the project to improve it"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include -H "Accept: application/vnd.github.symmetra-preview+json" --request POST --data '{"name":"task","color":"FF8800","description":"A task that needs to be completed outside of programming/design"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

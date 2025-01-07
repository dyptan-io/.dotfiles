function ecrlogin() {
    TOKEN=$(az acr login --name snowregistry --expose-token --output tsv --query accessToken)
    docker login snowregistry.azurecr.io -u 00000000-0000-0000-0000-000000000000 --password-stdin <<< $TOKEN
}

#Check your docker ratelimit
function docker-ratelimit() {
  echo
  echo "ratelimit-limit: limit for number of pulls for the timeperiod in seconds (w=)"
  echo "ratelimit-remaining: same but for how many pulls are remaining"
  echo
  TOKEN=$(curl -s "https://auth.docker.io/token?service=registry.docker.io&scope=repository:ratelimitpreview/test:pull" | jq -r .token)
  curl -s --head -H "Authorization: Bearer $TOKEN" https://registry-1.docker.io/v2/ratelimitpreview/test/manifests/latest
}
 
function kubecfg() {
  echo Updating kubecfg:
  readonly AWS_PR=${1:?"The AWS Profile must be specified!"}
  aws sso login --profile "$AWS_PR"
  
  for region in us-west-2 us-east-1 eu-west-1 ap-northeast-1 ap-southeast-2; do
    for cluster in $(aws --profile "$AWS_PR" --region ${region} eks list-clusters 2> /dev/null | jq -r ".clusters | .[]"); do
      echo Updating ${region}:${cluster}
      aws --profile "$AWS_PR" --region ${region} eks update-kubeconfig --name ${cluster} --alias ${cluster}
    done
  done
}


#!/bin/sh

REGION="us-east-1"
DIR="$(cd $(dirname $0) ; pwd)"

main() {
  ENV=$1
  shift

  case $ENV in
    dev|prd)
        echo ENV=$ENV
    ;;
    *)
        echo "first argument must be (dev|stg|prd)" 1>&2
        exit 1
    ;;
  esac

  ACCOUNT_ID=$(aws sts get-caller-identity $* | jq -r .Account)
  BUCKET_NAME="vr2-${ENV}-front-resources-${ACCOUNT_ID}"
  ORIGIN_PATH=/dist/chatgpt
  ORIGIN_NAME=chatGptFrontResource

  CLOUD_FRONT_ID=$(aws cloudfront list-distributions --query 'DistributionList.Items[?Origins.Items[?DomainName == `'${BUCKET_NAME}'.s3.'${REGION}'.amazonaws.com` && Id == `'${ORIGIN_NAME}'`]].Id' $* | jq -r '.[0]')
  ENV=${ENV} npm run build

  aws s3 rm s3://${BUCKET_NAME}${ORIGIN_PATH}/ --recursive $*
  aws s3 cp ./dist/ s3://${BUCKET_NAME}${ORIGIN_PATH}/ --recursive $*
  aws s3 cp ../errors/ s3://${BUCKET_NAME}${ORIGIN_PATH}/errors --recursive $*
  aws cloudfront create-invalidation --distribution-id ${CLOUD_FRONT_ID} --paths "/*" $*

}

main $*

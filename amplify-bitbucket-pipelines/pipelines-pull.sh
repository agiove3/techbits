#!/bin/bash

# Reference:
# https://docs.amplify.aws/cli/usage/headless/#amplify-pull-parameters
set -e
IFS='|'

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":false,\
\"accessKeyId\":\"$AWS_ACCESS_KEY\",\
\"secretAccessKey\":\"$AWS_SECRET_ACCESS_KEY\",\
\"region\":\"$AWS_REGION\"\
}"
AMPLIFY="{\
\"appId\":\"$AMPLIFY_APP_ID\",\
\"envName\":\"$AMPLIFY_ENV\",\
}"
PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

amplify pull \
--amplify $AMPLIFY \
--providers $PROVIDERS \
--yes

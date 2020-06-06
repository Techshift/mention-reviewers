#!/bin/sh -l

cat $GITHUB_EVENT_PATH
mentioned_users=$(cat $GITHUB_EVENT_PATH | jq '.pull_request.requested_reviewers | map("@" + .) | join(" ")')
echo "Mentioned users: $mentioned_users"

echo ::set-output name=mentions::$mentioned_users

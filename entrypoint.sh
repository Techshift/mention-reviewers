#!/bin/sh -l

GITHUB_EVENT_PATH=/Users/jamesrogers/Desktop/file.json
cat $GITHUB_EVENT_PATH
mentioned_users=$(cat $GITHUB_EVENT_PATH | jq '.pull_request.requested_reviewers | map("@" + .login) | join(" ")')
echo "Mentioned users: $mentioned_users"

echo ::set-output name=mentions::$mentioned_users

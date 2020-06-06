#!/bin/sh -l

mentioned_users=$(cat $GITHUB_EVENT_PATH | jq '.pull_request.requested_reviewers | map("@" + .login) | join(" ")')
echo "Mentioned users: $mentioned_users"

echo ::set-output name=mentions::$mentioned_users

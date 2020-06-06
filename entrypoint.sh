#!/bin/sh -l

github_event=$1
echo "github_event: $github_event"
mentioned_users=$(echo $github_event | jq '.pull_request.requested_reviewers | map("@" + .) | join(" ")')
echo "Mentioned users: $mentioned_users"

echo ::set-output name=mentions::$mentioned_users

#!/bin/sh -l

# Default GITHUB_SHA
tag=${GITHUB_SHA}

# If release parse the tag name from GITHUB_REF
if [ "${GITHUB_EVENT_NAME}" == "release" ]; then
  ref="${GITHUB_REF}"
  tag=$(echo $GITHUB_REF | sed 's/refs\/tags\///g')
fi

echo "::set-output name=tag::$tag"
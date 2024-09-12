#! /bin/bash
# shellcheck disable=SC2034

# define the target repo
DOCKER_REPO="${DOCKER_REPO:-moonbuggy2000/windows-nftables}"

# default tag to build when no arguments provided
default_tag='latest'

# start the builder proper
. "hooks/.build.sh"

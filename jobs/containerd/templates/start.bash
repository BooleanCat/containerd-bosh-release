#!/usr/bin/env bash
set -euo pipefail

# shellcheck source=./env.erb
source /var/vcap/jobs/containerd/bin/env

mkdir -p "$log_dir"
mkdir -p "$run_dir"
mkdir -p "$root_dir"
mkdir -p "$state_dir"
mkdir -p "$address_dir"
mkdir -p "$debug_dir"

echo $$ > "${run_dir}/containerd.pid"

exec 1>> "${log_dir}/containerd.stdout.log"
exec 2>> "${log_dir}/containerd.stderr.log"

exec containerd -c /var/vcap/jobs/containerd/config/containerd.toml

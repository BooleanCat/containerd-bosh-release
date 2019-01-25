#!/usr/bin/env bash
set -euo pipefail

# shellcheck source=./env.erb
source /var/vcap/jobs/containerd/bin/env

kill "$( cat "${run_dir}/containerd.pid" )"
rm -f "${run_dir}/containerd.pid"

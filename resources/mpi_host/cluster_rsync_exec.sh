#!/bin/bash
jobdir=$(dirname $0)
cd ${jobdir}

source inputs.sh
source workflow-libs.sh

if [[ ${conda_install} == "true" ]]; then
    create_conda_env_from_yaml ${conda_dir} ${conda_env} conda_env.yaml
else
    ${load_parsl}
fi

python main.py


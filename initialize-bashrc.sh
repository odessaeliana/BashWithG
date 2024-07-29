#!/bin/bash

# Check if a parameter is passed; if not, echo usage and exit
if [ $# -eq 0 ]; then
  echo "Usage: $0 [Repositories Directory]"
  echo "Usage: $0 ~/."
  exit 1
fi

# Set DirectoryRepos to the provided argument
DirectoryRepos=$1

# Write .bashrc linking commands with the provided directory
cat <<EOF > ~/.bashrc
export DirectoryRepos=/home/bongiswaeliana/bash-profile
source $DirectoryRepos/.bash_profile
source $DirectoryRepos/.bash_profile_personal
EOF

# Source the updated .bashrc to apply changes
source ~/.bashrc

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
cat << EOF > ~/.bashrc
export DirectoryRepos=$DirectoryRepos
if [ -f "\$DirectoryRepos/bash-profile/.bash_profile" ]; then
    source "\$DirectoryRepos/bash-profile/.bash_profile"
fi
if [ -f "\$DirectoryRepos/bash-profile/.bash_profile_personal" ]; then
    source "\$DirectoryRepos/bash-profile/.bash_profile_personal"
fi
EOF

# Source the updated .bashrc to apply changes
source ~/.bashrc

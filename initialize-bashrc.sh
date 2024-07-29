# Check if a parameter is passed; if not, echo usage and exit
if [ $# -eq 0 ]; then
  echo "Usage: $0 [Reposotories Directory]"
  echo "Usage: $0 ~/."
  exit 1
fi

# Set DirectoryRepos to the provided argument
DirectoryRepos=$1

# Write .bashrc linking commands with the provided directory
echo "export DirectoryRepos=$DirectoryRepos
source \$DirectoryRepos/bash-profile/.bash_profile
source \$DirectoryRepos/bash-profile/.bash_profile_personal" > ~/.bashrc

# Source the updated .bashrc to apply changes
source ~/.bashrc
=======
=======
#!/bin/bash

>>>>>>> 91a2e5a3e0ed5225186eae21e896f455c5bbe7d7
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
source \$DirectoryRepos/bash-profile/.bash_profile
source \$DirectoryRepos/bash-profile/.bash_profile_personal
EOF

# Source the updated .bashrc to apply changes
source ~/.bashrc
>>>>>>> 6379f74b7d2ba11d6b598f364436001a5b518250

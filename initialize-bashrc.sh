<<<<<<< HEAD
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
# Check if a parameter is passed; if not, echo usage and exit
if [ $# -eq 0 ]; then
  echo "Usage: $0 [Reposotories Directory]"
  echo "Usage: $0 ~/."
  exit 1
fi

# Set DirectoryRepos to the provided argument
DirectoryRepos=$1

# Write .bashrc linking commands with the provided directory
cat << EOF > ~/.bashrc
export DirectoryRepos=$DirectoryRepos
source \$DirectoryRepos/bash-profile/.bash_profile
EOF

# Source the updated .bashrc to apply changes
source ~/.bashrc
>>>>>>> 6379f74b7d2ba11d6b598f364436001a5b518250

# Git and System Utilities Script

This script provides handy aliases and functions, mainly for Git, but also some system-related utilities.

## Setup

### Font Face:
`Hack NF`

### Color Scheme:
`Cambell`

## Aliases

### `brc`
Reload the bashrc file.
\```bash
alias brc="source ~/.bashrc"
\```

### `gcm`
Checkout and pull the latest from the master branch.
\```bash
gcm(){
    git checkout master
    git pull
}
\```

### `gc`
Checkout a specific branch and merge master into it without editing the commit message.
\```bash
gc(){
    git checkout "$1"
    git merge master --no-edit
}
\```

### `gcb`
Create and checkout a new branch.
\```bash
gcb(){
    git checkout -b "$1"
}
\```

### `gbd`
Delete specified branch or branches.
\```bash
gbd() {
  local branches=("$@")
  for branch in "${branches[@]}"; do
    git branch -D "$branch"
  done
}
\```

### `gmm`
Merge master into the current branch.
\```bash
gmm(){
     git merge master
}
\```

### `grh`
Reset the current branch to its last commit.
\```bash
grh(){
    git reset --hard
}
\```

... [and so on for the rest of your functions]

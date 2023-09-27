# Git and System Utilities Script

This script provides handy aliases and functions, mainly for Git, but also some system-related utilities.

## **Setup**

### Font Face:
`Hack NF`

### Color Scheme:
`Cambell`

## **Aliases**

### `brc`&#8288;
Reload the bashrc file.
```bash
alias brc="source ~/.bashrc"
```

### `gcm`
Switch to the master branch and pull the latest commits.
```bash
gcm(){
    git checkout master
    git pull
}
```

### `gc`
Switch to a specified branch and merge master into it.
```bash
gc(){
    git checkout "$1"
    git merge master --no-edit
}
```

### `gcb`
Create and switch to a new branch.
```bash
gcb(){
    git checkout -b "$1"
}
```

### `gbd`
Delete the specified branch or branches.
```bash
gbd() {
  local branches=("$@")
  for branch in "${branches[@]}"; do
    git branch -D "$branch"
  done
}
```

### `gmm`
Merge the master branch into the current branch.
```bash
gmm(){
     git merge master
}
```

### `grh`
Reset the current branch to the last commit.
```bash
grh(){
    git reset --hard
}
```

### `gb`
List all branches.
```bash
gb(){
    git branch
}
```

### `gs`
Get the status of the repository.
```bash
gs(){
    git status
}
```

### `gp`
Pull the latest commits.
```bash
gp(){
    git pull
}
```

### `gps`
Push commits to the remote repository.
```bash
gps(){
    git push
}
```

### `ga`
Add all changes to staging.
```bash
ga(){
    git add .
}
```

### `gco`
Commit all staged changes with a message.
```bash
gco(){
    git commit -m "$1"
}
```

### `gacp`
Add all changes to staging, commit with a message, and push to the remote repository.
```bash
gacp(){
    ga
    git commit -m "$1"
    branch=$(git rev-parse --abbrev-ref HEAD)
    if ! git push; then 
        git push --set-upstream origin "$branch"
    else 
        git push
    fi
}
```

### `gst`
Stash all changes, including untracked changes.
```bash
gst(){
    git stash --include-untracked
}
```

### `gsp`
Pop the last stashed changes.
```bash
gsp(){
    git stash pop
}
```

### `gfix`
Remove the `.gitattributes` file and reset the repository.
```bash
gfix(){
    git rm .gitattributes
    git add -A
    git reset --hard
}
```

### `run`
Run the `test` file with node.
```bash
run(){
    node test
}
```

### `ct`
Commit all changes with a message and push to the remote repository.
```bash
ct(){
    git add .
    git commit -m "$1"
    git push
}
```

### `lm`
Merge master into all local branches.
```bash
lm(){  
  gp
  for branch in $(git for-each-ref --format='%(refname:short)' refs/heads/); do
    echo -e "\n-----------------------"
    echo "Next branch: $branch"
    echo "-----------------------"
    gc $branch
  done
  gcm
}
```

### `st`
Synchronize the system hardware clock with the current system time.
```bash
st(){
    sudo hwclock -s
}
```
### `sync`
Synchronize the local repository with the remote by pulling the latest changes, fetching updates from the origin, merging changes from the master branch, and then pushing any local commits back to the remote repository.
```bash
sync(){
  git pull
  git fetch origin
  git merge origin/master
  git push 
}
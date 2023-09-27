# Git and System Utilities Script

This script provides handy aliases and functions, mainly for Git, but also some system-related utilities.

## **Setup**

### Font Face
- `Hack NF`

### Color Scheme
- `Cambell`

## **Aliases**

### `brc`
Reload the bashrc file.

## **Git Utilities**

### `gcm`
Checkout and pull the latest from the master branch.

### `gc`
Checkout a specific branch and merge master into it without editing the commit message.

### `gcb`
Create and checkout a new branch.

### `gbd`
Delete one or multiple local branches.

### `gmm`
Merge the master branch into the current branch.

### `grh`
Reset the current branch to the latest commit, discarding all changes.

### `gb`
List all branches.

### `gs`
Show the status of changes in the current branch.

### `gp`
Pull the latest changes from the remote repository.

### `gps`
Push changes to the remote repository.

### `ga`
Add all changes to the staging area.

### `gco`
Commit the staged changes with a specific message.

### `gacp`
Add all changes, commit with a specific message, and push. If the current branch has no upstream, set it.

### `gst`
Stash all changes, including untracked files.

### `gsp`
Pop the latest stash.

### `gfix`
Remove the .gitattributes file, add all changes, and reset the branch.

### `ct`
Add all changes, commit with a specific message, and push.

### `lm`
Pull the latest changes and then, for each branch, merge master into it. Finally, checkout and pull the master branch.

## **System Utilities**

### `run`
Execute a Node.js test file.

### `st`
Set the system clock from the hardware clock.

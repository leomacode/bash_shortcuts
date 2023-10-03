# font face: hack NF
#color scheme: cambell

alias brc="source ~/.bashrc"


gcm(){
    git checkout master
    git pull
}

gc(){
    git checkout "$1"
    git merge master --no-edit
}

gcb(){
    git checkout -b "$1"
}

gbd() {
  local branches=("$@")  # Add this line to create an array from the function parameters
  for branch in "${branches[@]}"; do
    git branch -D "$branch"
  done
}

gmm(){
     git merge master
}

grh(){
    git reset --hard
}

gb(){
    git branch
}

gs(){
    git status
}

gp(){
    git pull
}

gps(){
    git push
}

ga(){
    git add .
}

gco(){
    git commit -m "$1"
}

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

gst(){
    git stash --include-untracked
}

gsp(){
    git stash pop
}

gfix(){
    git rm .gitattributes
    git add -A
    git reset --hard
}

run(){
    node test
}

ct(){
    git add .
    git commit -m "$1"
    git push
}

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

st(){
    sudo hwclock -s
}

sync(){
  git fetch origin
  git checkout master
  git merge origin/master
  git reset --hard origin/master
}

# Go to sf1 directory
function sfo () {
  cd ~/prj/secforceone/$1
}

# make dir and enter it
function mk () {
  mkdir -p $1
  cd $1
}

# Cd into project dir
function @go () {
  cd ~/prj/$1
}

# Checkout Experimental Branch
function exp () {
  cd ~/prj/experimental
  git checkout user/bw-jacob-sansbury/$1
}

# Push project to git
function @push () {
  (@go $1 && git push origin $2)
}

# Init gerrit repo
function @new () {
  if [ $1 = "--gerrit" ]
    then
      mk ~/prj/$2
      @go $2
      git clone ssh://bw-jacob-sansbury@gerrit.devtools.bwce.io:29418/$2 . && scp -p -P 29418 bw-jacob-sansbury@gerrit.devtools.bwce.io:hooks/commit-msg ~/prj/$1/.git/hooks/
  elif [ $1 = "--gitlab" ]
    then
      mk ~/prj/$2
      @go $2
      git clone git@gitlab.com:$2.git .
  elif [ $1 = "--github" ]
    then
      mk ~/prj/$2
      @go $2
      git clone git@github.com:$2.git .
  else
    mk ~/prj/$1
  fi
}
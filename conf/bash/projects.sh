PROJECT_DIR="Projects"

# Go to sf1 directory
function sfo () {
  cd ~/$PROJECT_DIR/secforceone/$1
}

# make dir and enter it
function mk () {
  mkdir -p $1
  cd $1
}

# Cd into project dir
function @go () {
  cd ~/$PROJECT_DIR/$1
}

# Checkout Experimental Branch
function exp () {
  cd ~/$PROJECT_DIR/experimental
  git checkout user/bw-jacob-sansbury/$1
}

# Push project to git
function @push () {
  (@go $1 && git push origin $2)
}

# Init gerrit repo
function @new () {
  if [ $1 = "--nv" ]
    then
      mk ~/$PROJECT_DIR/$2
      @go $2
      git clone ssh://git@gitlab-master.nvidia.com:12051/$2.git .
  elif [ $1 = "--gitlab" ]
    then
      mk ~/$PROJECT_DIR/$2
      @go $2
      git clone git@gitlab.com:$2.git .
  elif [ $1 = "--github" ]
    then
      mk ~/$PROJECT_DIR/$2
      @go $2
      git clone git@github.com:$2.git .
  else
    mk ~/$PROJECT_DIR/$1
  fi
}

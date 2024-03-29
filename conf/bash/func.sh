function pluto*() {
  (cd ~/Projects/plutocapital/pluto/k8s && ./deploy_new_image.sh)
}

# make 'tf' work as 'terraform'
function tf() {
  terraform "$@"
}

# edit a bash shell
function dotbash() {
  vim ~/.me/conf/bash/.$1
}

# ssh with jacob_sansbury.pem
function sshjs() {
  ssh -i ~/.ssh/jacob_sansbury.pem $1
}

# turn off a project's docker
function down() {
  go $1
  docker-compose down --remove-orphans
}

function up() {
  go $1
  if [ $2 = "--dev" ]
    then
      docker-compose -f docker-compose.dev.yml up --build
  elif [ $2 = "--prd" ]
    then
      docker-compose up --build
  fi
}

# run ./run for a project
function run() {
  (@go $1 && ./run)
}

# make a run file and make it exec-able
function runable() {
  echo $1 > run
  chmod +x run
}

function labs() {
  run lang/py/jup
}

function work() {
  code ~/$PROJECT_DIR/$1.code-workspace
}

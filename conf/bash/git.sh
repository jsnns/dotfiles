git config --global --unset credentials.helper

function @checkGitEmail() {
	echo "Local git email is: " $(git config --local --get user.email)
}

fucntion @tree() {
	TREE_PATH=`git rev-parse --show-toplevel`/trees/`echo "$1" | sed 's/\//-/g'`
	echo $TREE_PATH
	git worktree add "$TREE_PATH" "$1"
	cd "$TREE_PATH"
	git submodule update --init
}

function @git() {
  if [ $1 = "user" ]
  	 git config --local user.name "Jacob Sansbury"
    then
		if [ $2 = "--jsnns" ]
			then
				git config --local user.email "sansburyjacob@gmail.com"
		elif [ $2 = "--bw" ]
			then
				git config --local user.email "dev.Sansbury.Jacob@dev.bwater.com"
		fi
		@checkGitEmail
  elif [ $1 = "check" ]
    then
		if [ $2 = "--email" ]
			then
				@checkGitEmail
		elif [ $2 = "--origin" ]
			then
				echo $(git remote get-url origin)
		fi
  fi
}

git config --global --unset credentials.helper

function @checkGitEmail() {
	echo "Local git email is: " $(git config --local --get user.email)
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
				git config --local user.email "bw.Jacob.Sansbury@dev.bwater.com"
		fi
		@checkGitEmail
  elif [ $1 = "check" ]
    then
		if [ $2 = "--email" ]
			then
				@checkGitEmail
		fi
  fi
}

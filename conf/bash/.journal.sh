function @journal() {

	if [ $1 = "new" ]
	then
		(@go jsnns/journal && bash Tech/new_day.sh)
	fi

	if [ $1 = "log" ]
	then
		(@go jsnns/journal && bash Tech/log.sh)
	fi

	if [ $1 = "commit" ]
	then
		(@go jsnns/journal && git add . && git commit -m "Journal Entry for $(date '+%m/%d/%Y')" && git push origin master)
	fi

}
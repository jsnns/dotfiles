function @journal() {

	if [ $1 = "new" ]
	then
		(@go jsnns/journal && bash Tech/new_day.sh)
	fi

}

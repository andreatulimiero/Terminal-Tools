cd () {
	if [ -f env/bin/activate ] && [ "$1" == ".." ] ; then
		deactivate
	fi
	builtin cd "$@"
	if [ -f env/bin/activate ] ; then
		source env/bin/activate
	fi
}

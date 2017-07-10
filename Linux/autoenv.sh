cd () {
	if [ -f env/bin/activate ] && [ "$1" == ".." ] ; then
		source ~/.bashrc
	fi
	builtin cd "$@"
	if [ -f env/bin/activate ] ; then
		source env/bin/activate
	fi
}

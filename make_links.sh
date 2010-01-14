# vim: set filetype=perl expandtab tabstop=4 shiftwidth=4 autoindent smartindent nu:

function create_link {
	file=$1
	if [ -e ~/.$file ] ; then
		echo Link for $file not created, because it already exists.
	else
		ln -s `pwd`/$file ~/.$file
		echo Created ~/.$file 
	fi
}

function remove_link {
	file=$1
	if [ -h ~/.$file ] ; then
		rm ~/.$file
		echo Link \~/.$file removed.
	fi
}

cmd=$1
case "$cmd" in
  	'install')
		create_link inputrc
		create_link vimrc
		create_link bash_profile
		;;
	'clean')
		remove_link inputrc
		remove_link vimrc
		remove_link bash_profile
		;;
	*)
		echo "USAGE: setup install|clean"
esac




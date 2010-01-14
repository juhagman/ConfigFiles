echo bash_profile

function pb {
	user=$1

	if [ -z $user ]; then
		echo Please specify username
	else
		ssh -l $user pb.jhagman.members.mac.com
	fi
}


test -r /sw/bin/init.sh && . /sw/bin/init.sh

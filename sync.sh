# sync.sh
# Usage: 
#	./sync.sh      == see what files will be uploaded, make no changes
#	./sync.sh live == do the upload

set -e

HOME_DIR='/Users/jswart/dev/dtk-link-app/' # The root directory of the files you want to upload
REMOTE_DIR='/var/www/html/la/'             # The remote root directory to upload to
EXCLUDE_FILE='./sync_excludes.txt'         # The file containing bash style excludes patterns
SSH_ID='dtk-link-app'                      # The ssh identity file that will be used
CURR_DIR=$(pwd)'/'

if [ $HOME_DIR != $CURR_DIR ]; then 
	echo 'Please run from the specified HOME_DIR'
	exit
fi

if [ -n "$1" ] && [ $1 == 'live' ]; then
	# $1 is not null && equal to 'live'
	# ! This does the actual upload
	if [ -n "$2" ] && [ $2 == 'down' ]; then
		echo '[live] files down ...'
		# remote to local
		rsync -az --progress --size-only --exclude-from $EXCLUDE_FILE $SSH_ID:$REMOTE_DIR $HOME_DIR
	elif [ -n "$2" ] && [ $2 == 'up' ]; then
		echo '[live] files up ...'
		rsync -az --progress --size-only --exclude-from $EXCLUDE_FILE $HOME_DIR $SSH_ID:$REMOTE_DIR
	fi
else
	case "$1" in
		"down")
			echo '[review] files down ...'
			# -n == dry-run : show what would change without making any changes
			# -i == itemized changes 
			# remote to local
			rsync -ainz --progress --size-only --exclude-from $EXCLUDE_FILE $SSH_ID:$REMOTE_DIR $HOME_DIR | grep \>
			;;
		"up")
			echo '[review] files up ...'
			# The shows what files will be uploaded, does not change anything
			rsync -ainz --progress --size-only --exclude-from $EXCLUDE_FILE $HOME_DIR $SSH_ID:$REMOTE_DIR | grep \<
			;;
		*)
			echo 'default'
			;;
	esac
fi



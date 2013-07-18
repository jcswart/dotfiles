# sync.sh
# Usage: 
#	./sync.sh      == see what files will be uploaded, make no changes
#	./sync.sh live == do the upload

set -e

HOME_DIR='__CHANGE-ME__'     # The root directory of the files you want to upload
REMOTE_DIR='__CHANGE-ME__'   # The remote root directory to upload to
EXCLUDE_FILE='__CHANGE-ME__' # The file containing bash style excludes patterns
SSH_ID='__CHANGE-ME__'       # The ssh identity file that will be used

if [ -n "$1" ] && [ $1 == 'live' ]; then
	# $1 is not null && equal to 'live'
	# ! This does the actual upload
	rsync -az --progress --size-only --exclude-from $EXCLUDE_FILE $HOME_DIR $SSH_ID:$REMOTE_DIR
else
	# -n == dry-run : show what would change without making any changes
	# -i == itemized changes 
	# The shows what files will be uploaded, does not change anything
	rsync -ainz --progress --size-only --exclude-from $EXCLUDE_FILE $HOME_DIR $SSH_ID:$REMOTE_DIR | grep \<
fi



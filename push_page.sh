set -e

SSH_ID='dtk-link-app'
FILE='addons/modules/links/controllers/links.php';
REMOTE_PATH='/var/www/html/la/'

# allow '$> ./push_page.sh file PATH_TO_FILE' to override default above
if [ -n "$1" ] && [ $1 == 'file' ]; then
	FILE=$2
fi

scp $FILE $SSH_ID:$REMOTE_PATH$FILE

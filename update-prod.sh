#
# Update Production
# 
# Assuming you have two directories side by side, ex:
#
# parent
#   \_ prod
#   \_ git
#
# This script will read the most recent changes from git in the parent/git
# folder and copy those files to parent/prod.
#
# In order to get this to work properly:
#    1. git pull origin master
#    2. ./update-prod.sh
#    3. ?
#    4. Pray to the gods.

set -e

# Making sure you know what you are doing!
if [ -n "$1" ] && [ $1 == 'ireadthemanual' ]; then
        # We are here
        this_dir='parent/git'

        # The production copy
        old_dir='parent/prod'

        echo 'Copying files:'
        echo

        for FILE in `git diff --name-only HEAD HEAD~1`
        do
                new=$this_dir$FILE
                old=$old_dir$FILE
                cp $new $old
                echo $FILE
        done

        echo 'finished...'
        echo
else
        echo 'Please open the script and comprehend it.'
fi

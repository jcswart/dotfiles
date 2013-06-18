set -e

rsync -az --progress --size-only --exclude-from '/Users/jswart/dev/linkrecon/sync_excludes.txt' /Users/jswart/dev/linkrecon/ rmvm_fullserv:/var/www/html/

# -n == dry-run : show what would change without making any changes
# -i == itemized changes 
#rsync -ainz --progress --size-only --exclude-from '/Users/jswart/dev/linkrecon/sync_excludes.txt' /Users/jswart/dev/linkrecon/ rmvm_fullserv:/var/www/html/

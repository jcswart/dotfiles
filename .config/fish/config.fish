## Fish Config ##

# Alias #

	function l
		ls -alhG $argv
	end

	function ff
		find . -type f -iname "*$argv*"
	end

	function fd
		find . -type d -iname "*$argv*"
	end

	function gs
		git status
	end

	function gcm
		git commit -am $argv
	end

	function emacs
		/usr/local/Cellar/emacs/24.3/bin/emacs
	end

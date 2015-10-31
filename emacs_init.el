; Install emacs packages

(package-refresh-contents)


(setq packages (list "web-mode" 
		     "org-mode"
		     "comment-dwim-2"
		     "aggressive-indent-mode"
		     "powerline"))


(mapcar 'package-install packages)

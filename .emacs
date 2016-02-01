;;;;;
;; .emacs
;; Packages: comment-dwim2, base16 (themes)
;;;;;



;; Load package archives
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)


;; Install packages if necessary
(setq package-list '(comment-dwim-2
		     base16-theme
		     web-mode
		     markdown-mode
		     yaml-mode))

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))



;; Disable splash screen
(setq inhibit-splash-screen t)


;; Handle backup files so they don't bother me
;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; Disable those ugly scrollbars
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Skinny borders
(fringe-mode 0)

;; Display column numbers
(setq column-number-mode 1)

;; Packages

;;;; Org mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))



;;; org files
;; agenda files for holding calendar, todos, and reoccuring tasks
(setq org-agenda-files (list "~/Documents/org/schedule.org"
			     "~/Documents/org/reoccuring.org"
			     "~/Documents/org/todo.org"))

;; notes file for capturing notes
(setq org-default-notes-file "~/Documents/org/notes.org")

;;; org custom commands

(define-key global-map "\C-cl" 'org-store-link) ; org-store-link for storing links to files
(define-key global-map "\C-cc" 'org-capture) ; org-capture for capturing notes
(define-key global-map "\C-ca" 'org-agenda) ; org-agenda for opening the agenda views

;; Leave a timestamp when a TODO is completed
(setq org-log-done 'time)

;; org-capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Documents/org/gtd.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/Documents/org/journal.org")
	 "* %?\nEntered on %U\n  %i\n  %a")
	("f" "Finance" table-line (file "~/Documents/test/finance.org"))))



;;;; Org mode

;;;; comment-dwim-2
(require 'comment-dwim-2)
(global-set-key (kbd "M-;") 'comment-dwim-2) ;
;;;; comment-dwim-2


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (base16-eighties-dark)))
 '(custom-safe-themes
   (quote
    ("f245c9f24b609b00441a6a336bcc556fe38a6b24bfc0ca4aedd4fe23d858ba31" "f1a6cbc40528dbee63390fc81da426f1b00b4fc09a60fe35752f5838b12fbe0a" "e254f8e18ba82e55572c5e18f3ac9c2bd6728a7e500f6cc216e0c6f6f8ea7003" default)))
 '(doc-view-ghostscript-program "/usr/local/bin/gs"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

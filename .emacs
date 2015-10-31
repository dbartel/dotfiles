;;package
(require 'package)
(add-to-list 'package-archives
    '("melpa" .
      "http://melpa.org/packages/"))
(package-initialize)

;; Disable the splash screen
(setq inhibit-splash-screen t)

;;enable syntax highlighting
(global-font-lock-mode t)
(transient-mark-mode 1)


; org-mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-log-done 'time)

;; web-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))


;; web-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

;; comment-dwim-2
(require 'comment-dwim-2)
(global-set-key (kbd "M-;") 'comment-dwim-2)

(require 'powerline)
(powerline-default-theme)


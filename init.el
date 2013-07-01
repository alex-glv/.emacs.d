(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives 
             '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(load "~/.emacs.d/install_packages.el")

(require 'paredit)
(require 'rainbow-delimiters)
(require 'clojure-mode)
(require 'nrepl)
(require 'framemove)
(require 'ac-nrepl)
(require 'dired-details+)
(require 'helm) 
(require 'bookmark+)

(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/variables.el")
(load "~/.emacs.d/elpa/php-mode.el")
(load "~/.emacs.d/starter-kit-eshell.el")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(setq mac-command-modifier 'control)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


(setq-default display-buffer-reuse-frames t)
(load-theme 'monokai)
(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(custom-safe-themes (quote ("d24e10524bb50385f7631400950ba488fa45560afcadd21e6e03c2f5d0fad194" default)))
 '(linum-format (quote dynamic)))

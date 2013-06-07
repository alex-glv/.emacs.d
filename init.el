x(require 'package)

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
(require 'starter-kit-eshell)
(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/variables.el")
(load "~/.emacs.d/elpa/php-mode.el")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:background "gray16"))))
 '(show-paren-match ((t (:background "gray21")))))


(setq mac-command-modifier 'control)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


(setq-default display-buffer-reuse-frames t)
(load-theme 'wombat)
(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks"))

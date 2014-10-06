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
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/hooks.el")
(load "~/.emacs.d/starter-kit-eshell.el")

(setq mac-command-modifier 'control)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq-default display-buffer-reuse-frames t)
(load-theme 'monokai t)
(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)

(custom-set-variables
 '(bmkp-last-as-first-bookmark-file "bookmarks")
 '(dired-dwim-target t)
 '(linum-format (quote dynamic)))

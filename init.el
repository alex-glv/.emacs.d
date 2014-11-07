

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
(require 'framemove)
(require 'helm) 
(require 'bookmark+)
(require 'eshell)
(require 'em-smart)

(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/variables.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/hooks.el")

(setq mac-command-modifier 'control)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq-default display-buffer-reuse-frames t)
(load-theme 'monokai t)
(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
(when (memq window-system '(nil))
  (setq linum-format " %d  ")
  (menu-bar-mode -1))

(custom-set-faces
 '(mode-line ((t (:background "#000000" :foreground "#F5F5F5" :bfox (:line-width 1 :color "#212121" :style unspecified))))))

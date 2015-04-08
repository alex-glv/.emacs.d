(require 'package)
(require 'em-smart)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives 
             '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(load "~/.emacs.d/install_packages.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/variables.el")
(load "~/.emacs.d/hooks.el")

(global-company-mode)
(setq mac-command-modifier 'control)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq-default display-buffer-reuse-frames t)
(load-theme 'zenburn t)
(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
(when (memq window-system '(nil))
  (setq linum-format " %d  ")
  (menu-bar-mode -1))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)



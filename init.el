(require 'package)

(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)


(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(setq settings-dir
      (concat user-emacs-directory "/settings/"))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(add-to-list 'load-path settings-dir)

(setq-default display-buffer-reuse-frames t)

(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)

(require 'recentf)
(recentf-mode)

(menu-bar-mode 0)

(setq-default indent-tabs-mode nil)


(global-set-key (kbd "C-M-y") (lambda () (interactive) (other-window 1)))
(global-set-key (kbd "C-M-l") (lambda () (interactive) (other-window (- 1))))

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(fset 'yes-or-no-p 'y-or-n-p)

(use-package company-go
  :ensure t
  :config
  (add-hook 'go-mode-hook (lambda ()
                            (setq gofmt-command "goimports")
                            (set (make-local-variable 'company-backends) '(company-go))
                            (outline-minor-mode)
                            (make-local-variable 'outline-regexp)
                            (setq outline-regexp "//\\.\\|//[^\r\n\f][^\r\n\f]\\|pack\\|func\\|impo\\|cons\\|var.\\|type\\|\t\t*....")
                            (outline-minor-mode 1)
                            (company-mode)))
  ;:config
  ;(add-hook 'completion-at-point-functions 'company-go)
  )

(use-package company
  :ensure t
  :config
  (setq tab-always-indent 'complete)
  (global-company-mode))

(use-package company-quickhelp
  :ensure t)

(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)
  (setq evil-want-keybinding nil)
; :config
;  (evil-mode 1);
  )

(use-package evil-collection
  :ensure t
  :after (evil)
  :config
  (evil-collection-init))

(use-package evil-mc
  :ensure t
  :after (evil)
  :config
  (global-evil-mc-mode  1))

(use-package inf-clojure
  :ensure t)

(use-package alchemist
  :ensure t)

(use-package zenburn-theme
             :ensure t
             :config
             (load-theme 'zenburn))


(use-package rainbow-delimiters
  :ensure t)

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-mode))

(use-package lisp-mode
  :config
  (add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'lisp-interaction-mode-hook #'eldoc-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'eldoc-mode))

(use-package go-mode
  :ensure t
  :bind (:map go-mode-map
              ("M-." . godef-jump)
              ("M-," . pop-tag-mark))
  :config
  (add-hook 'before-save-hook #'gofmt-before-save)
  (use-package go-guru
  :ensure t
  :config
  (add-hook 'go-mode-hook (lambda ()
                            (go-guru-hl-identifier-mode))))
  (use-package godoctor))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(use-package evil-magit
  :after (magit) 
  :ensure t)

(use-package projectile
  :ensure t
  :bind ("C-c C-p" . projectile-command-map)
  :config
  (projectile-global-mode +1)
  (setq projectile-completion-system 'ivy))

(use-package clj-refactor
  :ensure t
  :config)

(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(use-package eshell
  :config
  (setenv "PAGER" "cat")
  (let ((curr-sys-path "/usr/local/bin"))
  (setenv "PATH" (concat (getenv "PATH") ":" curr-sys-path ":/Users/sashka/go/bin:/usr/bin"))
  (add-to-list 'exec-path "/Users/sashka/go/bin")
  (setenv "GOPATH" "/Users/sashka/go")
  (add-to-list 'exec-path curr-sys-path)))
;;; 
(use-package paredit
             :ensure t
             :bind
             ("C-M-j" . paredit-forward-slurp-sexp)
             ("C-M-l" . paredit-forward-barf-sexp)
             ("C-M-k" . kill-sexp)
             :init
             (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
             (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
             (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
             (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
             (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
             (add-hook 'scheme-mode-hook           #'enable-paredit-mode)
             (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode))

(use-package paren
  :config
  (show-paren-mode +1))


(use-package recentf
  :config
  (setq recentf-save-file (expand-file-name "recentf" user-emacs-directory)
        recentf-max-saved-items 500
        recentf-max-menu-items 15
        ;; disable recentf-cleanup on Emacs start, because it can cause
        ;; problems with remote files
        recentf-auto-cleanup 'never)
  (recentf-mode +1))

(use-package dired
  :config
  ;; dired - reuse current buffer by pressing 'a'
  (put 'dired-find-alternate-file 'disabled nil)
  (setq dired-dwim-target t)
  ;; always delete and copy recursively
  (setq dired-recursive-deletes 'always)
  (add-hook 'dired-mode-hook
          (lambda () (dired-hide-details-mode +1)))
  (setq dired-recursive-copies 'always)

  ;; if there is a dired buffer displayed in the next window, use its
  ;; current subdir, instead of the current subdir of this dired buffer
  (setq dired-dwim-target t)

  ;; enable some really cool extensions like C-x C-j(dired-jump)
  (require 'dired-x))

(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))


(use-package terraform-mode
  :ensure t)


(use-package clojure-mode
  :ensure t
  :config
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'subword-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook #'clj-refactor-mode)
  (cljr-add-keybindings-with-prefix "C-x y")
  )

(use-package cider
  :ensure t
  :config
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'paredit-mode)
  (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
  (add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion))

;; (use-package ido
;;   :ensure t
;;   :config
;;   (setq ido-enable-prefix nil
;;         ido-enable-flex-matching t
;;         ido-create-new-buffer 'always
;;         ido-use-filename-at-point 'guess
;;         ido-max-prospects 10
;;         ido-save-directory-list-file (expand-file-name "ido.hist" user-emacs-directory)
;;         ido-default-file-method 'selected-window
;;         ido-auto-merge-work-directories-length -1)
;;   (ido-mode +1))

(use-package ivy
  :ensure t
  :bind
  ("C-c C-r" . ivy-recentf)
  ("C-r" . swiper)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t))

(use-package counsel
  :ensure t
  :bind ("M-x" . counsel-M-x))

(use-package smex
  :ensure t)

;; (use-package ido-ubiquitous
;;   :ensure t
;;   :config
;;   (ido-ubiquitous-mode +1))


;; (use-package flx-ido
;;   :ensure t
;;   :config
;;   (flx-ido-mode +1)
;;   ;; disable ido faces to see flx highlights
;;   (setq ido-use-faces nil))

(use-package markdown-mode
             :ensure t)

(use-package yaml-mode
             :ensure t)

(use-package golden-ratio
             :ensure t)

(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode)
  ;; autosave the undo-tree history
  (setq undo-tree-history-directory-alist
        `((".*" . ,temporary-file-directory)))
  (setq undo-tree-auto-save-history t))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode t))

(use-package which-key
  :ensure t
  :config
  (which-key-mode +1))

(use-package rust-mode
  :ensure t)

(use-package flycheck-rust
  :ensure t
  :config (flycheck-rust-setup))

(use-package restclient
  :ensure t)

(use-package company-restclient
  :ensure t)

(use-package racer
  :ensure t
  :config
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode))

(use-package tramp
             :init
             (mapc
              (lambda (face)
                (set-face-attribute face nil :weight 'normal :underline nil))
              (face-list))
             :config (add-to-list 'tramp-remote-path "/usr/local/bin/"))


;; (use-package multiple-cursors
;;   :ensure t
;;   :bind (("C-c l" . mc/edit-lines)
;;          ("C-c n" . mc/mark-next-like-this)
;;          ("C-c p" . mc/mark-previous-like-this)
;;          ("C-c C-c" . mc/mark-all-like-this)
;;          ("C-c i" . mc/insert-numbers)
;;          ("C-c s" . mc/sort-regions)
;;          ("C-c r" . mc/reverse-regions))
;;   :config (multiple-cursors-mode))

(setq backup-directory-alist '(("." . "~/.emacs-saves/")))

(defun copy-to-osx-clipboard ()
  (interactive)
  (progn
    (cond
     ;
     ;; ((and (display-graphic-p) select-enable-clipboard)
     ;;  (x-set-selection 'CLIPBOARD (buffer-substring (region-beginning) (region-end))))
     (t (shell-command-on-region (region-beginning) (region-end)
				 "pbcopy")))))

(defun kill-next ()
  (interactive)
  (other-window 1)
  (kill-buffer-and-window))

(defun paste-from-osx-clipboard ()
  (interactive)
  (insert (shell-command-to-string "pbpaste")))

;; (when (memq window-system '(mac ns))
;;   (exec-path-from-shell-initialize))
;; (when (memq window-system '(nil))
;;   (setq linum-format " %d  ")
;;   (menu-bar-mode -1))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" default))))



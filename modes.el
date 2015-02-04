(require 'dired+)
(require 'web-mode)
;; MODES
(autoload 'octave-mode "octave-mod" nil t)
(show-paren-mode 1)
(global-linum-mode 1)
(ido-mode 1)
; (setq linum-format "%3d  ")
(custom-set-variables '(linum-format 'dynamic))
(set-default 'imenu-auto-rescan t)
(menu-bar-mode nil)
(tool-bar-mode -1)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(setq global-hl-line-mode nil)
(setq hl-line-mode nil)
(global-hl-line-mode -1)
(hl-line-mode nil)
(setq ido-everywhere t)
;; HOOKS
(defun clj-hooks ()
  	    (rainbow-delimiters-mode)
	    (enable-paredit-mode)
            (eldoc-mode))

(add-hook 'emacs-lisp-mode-hook 'clj-hooks)
(add-hook 'clojure-mode-hook 'clj-hooks)
(add-hook 'after-init-hook 'global-company-mode)

;; ibuffer
(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("dired" (mode . dired-mode))))))

(setq inhibit-splash-screen t) 

;; ido
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)

(ido-ubiquitous t)

(setq helm-display-function
      (lambda (buf)
        (split-window-vertically)
        (other-window 1)
        (switch-to-buffer buf)))

(setq eshell-where-to-jump 'begin)
(setq eshell-review-quick-commands nil)
(setq eshell-smart-space-goes-to-end t)
(toggle-diredp-find-file-reuse-dir 1)
(setq dired-dwim-target 1)

(add-to-list 'auto-mode-alist '("Vagrantfile" . ruby-mode))

(elpy-enable)
(setq elpy-rpc-backend "jedi")

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-hook 'js2-mode-hook 'modify-syntax-table-for-jsx)

(nyan-mode)

(global-prettify-symbols-mode t)

(defun pretty-mode-list ()
  (setq prettify-symbols-alist '(("lambda"  . ?λ)
				 ("function" . ?ƒ))))

(add-hook 'js2-mode-hook 'pretty-mode-list)
(add-hook 'php-mode-hook 'pretty-mode-list)



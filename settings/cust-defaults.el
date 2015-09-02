(setq mac-command-modifier 'control)
(setq-default display-buffer-reuse-frames t)

(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)

(setq mac-control-modifier 'control)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'hyper)
(setq mac-right-option-modifier 'hyper)

 
(scroll-bar-mode nil)

(require 'recentf)
(recentf-mode)

(require 'smartparens)
(require 'smartparens-config)

(smartparens-global-mode t)
(show-smartparens-global-mode t)
(sp-local-pair 'minibuffer-inactive-mode "'" nil :actions nil)

;; (sp-with-modes '(clojure-mode clojurescript-mode)
;;   (sp-local-pair "'" nil :actions nil))

;;; markdown-mode
(sp-with-modes '(markdown-mode gfm-mode rst-mode)
  (sp-local-pair "*" "*" :bind "C-*")
  (sp-local-tag "2" "**" "**")
  (sp-local-tag "2" "```" "```'")
  (sp-local-tag "s" "```scheme" "```")
  (sp-local-tag "<"  "<_>" "</_>" :transform 'sp-match-sgml-tags))

;;; tex-mode latex-mode
(sp-with-modes '(tex-mode plain-tex-mode latex-mode)
  (sp-local-tag "i" "\"<" "\">"))

;;; html-mode
(sp-with-modes '(html-mode sgml-mode)
  (sp-local-pair "<" ">"))

;;; lisp modes
(sp-with-modes sp--lisp-modes
  (sp-local-pair "(" nil :bind "C-("))

(require 'tramp)


;; disable bold font
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :underline nil))
 (face-list))

;; (when (eq system-type 'darwin)
;;   (set-face-attribute 'default nil :family "Monaco")
;;   (set-face-attribute 'default nil :height 130))

(add-to-list 'tramp-remote-path "/usr/local/bin/")

(provide 'cust-defaults)

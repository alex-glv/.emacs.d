;;(require 'smartparens)
(require 'multi-term)
(require 'company)
(require 'ivy)

(define-key company-active-map (kbd "TAB") (lambda () (interactive) (company-complete-common-or-cycle)))
(define-key company-active-map (kbd "<tab>") (lambda () (interactive) (company-complete-common-or-cycle)))
(define-key company-active-map (kbd "<S-tab>") (lambda () (interactive)
				  "complete common prefix or cycle backward."
				  (company-complete-common-or-cycle -1)))

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-c C-k") 'kill-region)

;(define-key ivy-minibuffer-map (kbd "C-w") 'ivy-backward-kill-word)

(global-set-key (kbd "C-s-g") (lambda () (interactive) (shrink-window-horizontally 15)))
(global-set-key (kbd "C-s-l") (lambda () (interactive) (enlarge-window-horizontally 15)))
(global-set-key (kbd "C-s-c") (lambda () (interactive) (shrink-window 5)))
(global-set-key (kbd "C-s-r") (lambda () (interactive) (enlarge-window 5)))


(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-. C-c") 'counsel-M-x)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "C-M-]") (lambda () (interactive) (other-window 1))) 
(global-set-key (kbd "C-M-[") (lambda () (interactive) (other-window (- 1))))


(global-set-key (kbd "C-c j") (lambda () (interactive) (godef-jump (point))))


(add-to-list  'term-bind-key-alist '( "C-c C-j" . term-line-mode))
(add-to-list  'term-bind-key-alist '( "C-c C-k" . term-char-mode))
(add-to-list  'term-bind-key-alist '( "C-p" . term-send-raw))
(add-to-list  'term-bind-key-alist '( "C-n" . term-send-raw))
(add-to-list  'term-bind-key-alist '( "C-a" . term-send-raw))
(add-to-list  'term-bind-key-alist '( "C-e" . term-send-raw))
(add-to-list  'term-bind-key-alist '( "C-r" . term-send-raw))
(add-to-list  'term-bind-key-alist '( "M-b" . term-send-backward-word))
(add-to-list  'term-bind-key-alist '( "M-f" . term-send-forward-word))
(add-to-list  'term-bind-key-alist '( "M-w" . term-send-backward-kill-word))
(add-to-list  'term-bind-key-alist '( "M-d" . term-send-forward-kill-word))
(add-to-list  'term-bind-key-alist '( "C-k" . term-send-raw))
(add-to-list  'term-bind-key-alist '( "C-r" . term-send-reverse-search-history))


;; paredit
(global-set-key (kbd "C-M-j") (lambda () (interactive) (paredit-forward-slurp-sexp)))
(global-set-key (kbd "C-M-l") (lambda () (interactive) (paredit-forward-barf-sexp)))

(global-set-key (kbd "C-M-k") (lambda () (interactive) (kill-sexp)))

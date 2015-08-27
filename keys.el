(require 'smartparens)
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

(define-key ivy-minibuffer-map (kbd "C-w") 'ivy-backward-kill-word)

(global-set-key (kbd "H-]") (lambda () (interactive) (shrink-window-horizontally 15)))
(global-set-key (kbd "H-[") (lambda () (interactive) (enlarge-window-horizontally 15)))
(global-set-key (kbd "H-}") (lambda () (interactive)(shrink-window 5)))
(global-set-key (kbd "H-{") (lambda () (interactive) (enlarge-window 15)))

(global-set-key (kbd "H-SPC h g") (lambda () (interactive) (helm-ls-git-ls)))
(global-set-key (kbd "H-SPC h r") (lambda () (interactive) (ivy-recentf)))
(global-set-key (kbd "H-SPC r h") (lambda () (interactive) (helm-show-kill-ring)))
(global-set-key (kbd "H-SPC h e") 'helm-eshell-history)
(global-set-key (kbd "H-SPC g s") (lambda () (interactive) (magit-status)))
(global-set-key (kbd "H-SPC g m") (lambda () (interactive) (magit-submodule-update)))

(global-set-key (kbd "H-SPC h b") 'helm-buffers-list)
(global-set-key (kbd "H-SPC h h") 'ivy-switch-buffer)

(global-set-key (kbd "H-SPC p f") 'projectile-find-file)

;; window management
(global-set-key (kbd "H-SPC w u") 'winner-undo)
(global-set-key (kbd "H-SPC c k") 'kill-buffer)
(global-set-key (kbd "H-SPC c j") 'ibuffer-jump-to-buffer)

;; (global-set-key (kbd "C-x C-f") 'helm-find-files) ;
(eval-after-load 'ivy '(progn 
			(global-set-key (kbd "C-x b") 'switch-to-buffer)
			(global-set-key (kbd "C-x C-b") 'switch-to-buffer)))

(global-set-key (kbd "H-SPC f f") 'helm-find-files)
(global-set-key (kbd "H-SPC f s") 'save-buffer)

(global-set-key (kbd "H-SPC a d") 'dired)
(global-set-key (kbd "H-SPC a e") 'eshell-named)

(global-set-key (kbd "H-w") 'kill-region)
(global-set-key (kbd "H-SPC x s") 'mc/skip-to-next-like-this)
(global-set-key (kbd "H-SPC x S") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "H-SPC x n") 'mc/mark-next-like-this)
(global-set-key (kbd "H-SPC x p") 'mc/mark-previous-like-this)
(global-set-key (kbd "H-SPC x a") 'mc/mark-all-like-this)
(global-set-key (kbd "H-SPC x w") 'mc/mark-all-words-like-this)
(global-set-key (kbd "H-SPC x r") 'mc/mark-all-in-region)

(global-set-key (kbd "H-SPC b t") 'toggle-truncate-lines)

(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-. C-c") 'counsel-M-x)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "M-]") (lambda () (interactive) (other-window 1))) 
(global-set-key (kbd "M-[") (lambda () (interactive) (other-window (- 1))))

(global-set-key (kbd "H-SPC w w") (lambda () (interactive) (ace-select-window)))
(global-set-key (kbd "H-SPC w c") (lambda () (interactive) (ace-delete-window)))
(global-set-key (kbd "H-SPC w s") (lambda () (interactive) (ace-swap-window)))

(define-key sp-keymap (kbd "H-SPC l t") 'sp-prefix-tag-object)
(define-key sp-keymap (kbd "H-SPC l p") 'sp-prefix-pair-object)
(define-key sp-keymap (kbd "H-SPC l c") 'sp-convolute-sexp)
(define-key sp-keymap (kbd "H-SPC l a") 'sp-absorb-sexp)
(define-key sp-keymap (kbd "H-SPC l e") 'sp-emit-sexp)
(define-key sp-keymap (kbd "H-SPC l p") 'sp-add-to-previous-sexp)
(define-key sp-keymap (kbd "H-SPC l n") 'sp-add-to-next-sexp)
(define-key sp-keymap (kbd "H-SPC l j") 'sp-join-sexp)
(define-key sp-keymap (kbd "H-SPC l s") 'sp-split-sexp)
(define-key sp-keymap (kbd "H-SPC l r") 'sp-rewrap-sexp)
(define-key sp-keymap (kbd "H-SPC l l") 'sp-raise-sexp)
(define-key sp-keymap (kbd "H-SPC l b") 'sp-backward-kill-sexp)

(define-key sp-keymap (kbd "C-H-f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "C-H-b") 'sp-backward-sexp)

(define-key sp-keymap (kbd "C-H-d") 'sp-down-sexp)
(define-key sp-keymap (kbd "C-H-a") 'sp-backward-down-sexp)
(define-key sp-keymap (kbd "C-S-a") 'sp-beginning-of-sexp)
(define-key sp-keymap (kbd "C-S-d") 'sp-end-of-sexp)

(define-key sp-keymap (kbd "C-H-e") 'sp-up-sexp)
(define-key sp-keymap (kbd ")") 'sp-up-sexp)
(define-key sp-keymap (kbd "C-H-u") 'sp-backward-up-sexp)
(define-key sp-keymap (kbd "C-H-t") 'sp-transpose-sexp)

(define-key sp-keymap (kbd "C-H-n") 'sp-next-sexp)
(define-key sp-keymap (kbd "C-H-p") 'sp-previous-sexp)

(define-key sp-keymap (kbd "C-H-k") 'sp-kill-sexp)
(define-key sp-keymap (kbd "C-H-w") 'sp-copy-sexp)

(define-key sp-keymap (kbd "C-S-w") 'sp-unwrap-sexp)
(define-key sp-keymap (kbd "C-S-v") 'sp-backward-unwrap-sexp)

(define-key sp-keymap (kbd "C-H-)") 'sp-forward-slurp-sexp)
(define-key sp-keymap (kbd "C-H-{") 'sp-forward-barf-sexp)
(define-key sp-keymap (kbd "C-H-(") 'sp-backward-slurp-sexp)
(define-key sp-keymap (kbd "C-H-}") 'sp-backward-barf-sexp)

(define-key sp-keymap (kbd "H-D") 'sp-splice-sexp)
(define-key sp-keymap (kbd "C-H-<delete>") 'sp-splice-sexp-killing-forward)
(define-key sp-keymap (kbd "C-H-<backspace>") 'sp-splice-sexp-killing-backward)
(define-key sp-keymap (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

(define-key sp-keymap (kbd "C-]") 'sp-select-next-thing-exchange)
(define-key sp-keymap (kbd "C-<left_bracket>") 'sp-select-previous-thing)
(define-key sp-keymap (kbd "C-H-]") 'sp-select-next-thing)

(define-key sp-keymap (kbd "H-f") 'sp-forward-symbol)
(define-key sp-keymap (kbd "H-b") 'sp-backward-symbol)

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

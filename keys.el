(require 'smartparens)
(require 'ace-window)

(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "TAB") 'company-select-next)
     (define-key company-active-map [tab] 'company-select-next)))

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-.") 'backward-kill-word)
(global-set-key (kbd "C-c C-k") 'kill-region)

(global-set-key (kbd "C-S-<left>") (lambda () (interactive) (shrink-window-horizontally 15)))
(global-set-key (kbd "C-S-<right>") (lambda () (interactive) (enlarge-window-horizontally 15)))
(global-set-key (kbd "C-S-<down>") (lambda () (interactive)(shrink-window 5)))
(global-set-key (kbd "C-S-<up>") (lambda () (interactive) (enlarge-window 15)))

(global-set-key (kbd "s-SPC h g") (lambda () (interactive) (helm-ls-git-ls)))
(global-set-key (kbd "s-SPC h r") (lambda () (interactive) (helm-recentf)))
(global-set-key (kbd "s-SPC r h") (lambda () (interactive) (helm-show-kill-ring)))
(global-set-key (kbd "s-SPC h e") 'helm-eshell-history)
(global-set-key (kbd "s-SPC g s") (lambda () (interactive) (magit-status ".")))
(global-set-key (kbd "s-SPC g m") (lambda () (interactive) (magit-submodule-update)))

(global-set-key (kbd "s-SPC h b") 'ibuffer)
(global-set-key (kbd "s-SPC h h") 'helm-buffers-list)

;; window management
(eval-after-load 'ace-window
  '(progn
     (global-set-key (kbd "s-SPC c o") 'ace-window)
     (global-set-key (kbd "s-SPC c w") 'ace-delete-window)
     (global-set-key (kbd "s-SPC c c") 'ace-jump-char-mode)
     (global-set-key (kbd "s-SPC c l") 'ace-jump-line-mode)
     (global-set-key (kbd "s-SPC c u") 'winner-undo)
     (global-set-key (kbd "s-SPC c k") 'kill-buffer)
     (global-set-key (kbd "s-SPC c j") 'ibuffer-jump-to-buffer)
     ))

(global-set-key (kbd "s-SPC f f") 'ido-find-file)

(define-key sp-keymap (kbd "s-SPC l t") 'sp-prefix-tag-object)
(define-key sp-keymap (kbd "s-SPC l p") 'sp-prefix-pair-object)
(define-key sp-keymap (kbd "s-SPC l c") 'sp-convolute-sexp)
(define-key sp-keymap (kbd "s-SPC l a") 'sp-absorb-sexp)
(define-key sp-keymap (kbd "s-SPC l e") 'sp-emit-sexp)
(define-key sp-keymap (kbd "s-SPC l p") 'sp-add-to-previous-sexp)
(define-key sp-keymap (kbd "s-SPC l n") 'sp-add-to-next-sexp)
(define-key sp-keymap (kbd "s-SPC l j") 'sp-join-sexp)
(define-key sp-keymap (kbd "s-SPC l s") 'sp-split-sexp)

(global-set-key (kbd "s-SPC a d") 'dired)
(global-set-key (kbd "s-SPC a e") 'eshell-named)

(global-set-key (kbd "s-SPC x k") 'kill-region)
(global-set-key (kbd "s-SPC x n") 'mc/mark-next-like-this)
(global-set-key (kbd "s-SPC x p") 'mc/mark-previous-like-this)
(global-set-key (kbd "s-SPC x a") 'mc/mark-all-like-this)
(global-set-key (kbd "s-SPC x w") 'mc/mark-all-words-like-this)
(global-set-key (kbd "s-SPC x r") 'mc/mark-all-in-region)

(global-set-key (kbd "s-SPC b t") 'toggle-truncate-lines)

(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "M-]") (lambda () (interactive) (other-window 1))) 
(global-set-key (kbd "M-[") (lambda () (interactive) (other-window (- 1))))


(define-key sp-keymap (kbd "C-M-f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "C-M-b") 'sp-backward-sexp)

(define-key sp-keymap (kbd "C-M-d") 'sp-down-sexp)
(define-key sp-keymap (kbd "C-M-a") 'sp-backward-down-sexp)
(define-key sp-keymap (kbd "C-S-a") 'sp-beginning-of-sexp)
(define-key sp-keymap (kbd "C-S-d") 'sp-end-of-sexp)

(define-key sp-keymap (kbd "C-M-e") 'sp-up-sexp)
(define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp)
(define-key sp-keymap (kbd "C-M-u") 'sp-backward-up-sexp)
(define-key sp-keymap (kbd "C-M-t") 'sp-transpose-sexp)

(define-key sp-keymap (kbd "C-M-n") 'sp-next-sexp)
(define-key sp-keymap (kbd "C-M-p") 'sp-previous-sexp)

(define-key sp-keymap (kbd "C-M-k") 'sp-kill-sexp)
(define-key sp-keymap (kbd "C-M-w") 'sp-copy-sexp)

(define-key sp-keymap (kbd "M-<delete>") 'sp-unwrap-sexp)
(define-key sp-keymap (kbd "M-<backspace>") 'sp-backward-unwrap-sexp)

(define-key sp-keymap (kbd "C-M-}") 'sp-forward-slurp-sexp)
(define-key sp-keymap (kbd "C-M-(") 'sp-forward-barf-sexp)
(define-key sp-keymap (kbd "C-M-{") 'sp-backward-slurp-sexp)
(define-key sp-keymap (kbd "C-M-)") 'sp-backward-barf-sexp)

(define-key sp-keymap (kbd "M-D") 'sp-splice-sexp)
(define-key sp-keymap (kbd "C-M-<delete>") 'sp-splice-sexp-killing-forward)
(define-key sp-keymap (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)
(define-key sp-keymap (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

(define-key sp-keymap (kbd "C-]") 'sp-select-next-thing-exchange)
(define-key sp-keymap (kbd "C-<left_bracket>") 'sp-select-previous-thing)
(define-key sp-keymap (kbd "C-M-]") 'sp-select-next-thing)

(define-key sp-keymap (kbd "M-F") 'sp-forward-symbol)
(define-key sp-keymap (kbd "M-B") 'sp-backward-symbol)

(global-set-key (kbd "C-c j") (lambda () (interactive) (godef-jump (point))))

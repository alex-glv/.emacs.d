(global-set-key (kbd "C-S-<left>") (lambda () (interactive) (shrink-window-horizontally 15)))
(global-set-key (kbd "C-S-<right>") (lambda () (interactive) (enlarge-window-horizontally 15)))
(global-set-key (kbd "C-S-<down>") (lambda () (interactive)(shrink-window 5)))
(global-set-key (kbd "C-S-<up>") (lambda () (interactive) (enlarge-window 15)))
(global-set-key (kbd "C-c k") (lambda () (interactive) (helm-ls-git-ls)))
(global-set-key (kbd "C-c r") (lambda () (interactive) (helm-recentf)))
(global-set-key (kbd "C-c i") (lambda () (interactive) (helm-imenu)))
(global-set-key (kbd "C-c h") (lambda () (interactive) (helm-show-kill-ring)))
(global-set-key (kbd "C-c s") (lambda () (interactive) (magit-status ".")))
(global-set-key (kbd "C-c C-s") (lambda () (interactive) (magit-submodule-update)))
(global-set-key (kbd "C-c j") (lambda () (interactive) (godef-jump (point))))

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-!") 'mc/mark-next-like-this)
(global-set-key (kbd "C-~") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c e") 'helm-eshell-history)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "C-x m") 'eshell)


(global-set-key (kbd "M-]") (lambda () (interactive) (other-window 1)))
(global-set-key (kbd "M-[") (lambda () (interactive) (other-window (- 1))))

(global-set-key (kbd "C-c C-e") 'eshell-named)

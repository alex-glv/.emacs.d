(global-set-key (kbd "S-C-<left>") (lambda () (interactive) (shrink-window-horizontally 30)))
(global-set-key (kbd "S-C-<right>") (lambda () (interactive) (enlarge-window-horizontally 30)))
(global-set-key (kbd "S-C-<down>") (lambda () (interactive)(shrink-window 20)))
(global-set-key (kbd "S-C-<up>") (lambda () (interactive) (enlarge-window 30)))
(global-set-key (kbd "C-c k") (lambda () (interactive) (helm-ls-git-ls)))
(global-set-key (kbd "C-c r") (lambda () (interactive) (helm-recentf)))
(global-set-key (kbd "C-c i") (lambda () (interactive) (helm-imenu)))
(global-set-key (kbd "C-c h") (lambda () (interactive) (helm-show-kill-ring)))
(global-set-key (kbd "C-c s") (lambda () (interactive) (magit-status ".")))
(global-set-key (kbd "C-c j") (lambda () (interactive) (godef-jump (point))))


(global-set-key (kbd "C-<") 'windmove-left)
(global-set-key (kbd "C->") 'windmove-right)
(global-set-key (kbd "C-\"") 'windmove-up)
(global-set-key (kbd "C-:") 'windmove-down)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "C-x m") 'eshell)


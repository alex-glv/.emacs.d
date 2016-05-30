(require 'company) 
(require 'company-go) 

(add-hook 'magit-status-mode-hook 'disable-magit-highlight-in-buffer)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'markdown-mode-hook 'turn-on-orgtbl)
(add-hook 'eshell-mode-hook 'eshell-smart-initialize)
(add-hook 'magit-pull-hook (lambda ()
			     (magit-run-git "stash" "save" magit-custom-options "--" "pull-stash-apply-me")))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-hook 'ibuffer-hook 'create-buffs-group)
(add-to-list 'auto-mode-alist
	     '("\\.restclient\\'" . restclient-mode))

(setq gofmt-command "goimports")
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook (lambda ()
			  (set (make-local-variable 'company-backends) '(company-go))
			  (company-mode)))

(add-hook 'magit-status-mode-hook 'disable-magit-highlight-in-buffer)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'markdown-mode-hook 'turn-on-orgtbl)
(add-hook 'eshell-mode-hook 'eshell-smart-initialize)

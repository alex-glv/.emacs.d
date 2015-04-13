(setq mac-command-modifier 'control)
(setq-default display-buffer-reuse-frames t)

(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)

(provide 'cust-defaults)

(defun disable-magit-highlight-in-buffer () 
  (face-remap-add-relative 'magit-item-highlight '()))

(defun toggle-dired-dwim ()
  (interactive)
  (let ((crnt-value dired-dwim-target))
    (message "Flipping dired-dwim-target %s value" crnt-value)
    (if (eq crnt-value nil)
	(setq dired-dwim-target t)
      (setq dired-dwim-target nil))))

(defun eshell-named (buffer-title)
  (interactive "MEnter buffer name: ")
  (let ((buf (get-buffer-create (format "*esh|%s*" buffer-title))))
    (cl-assert (and buf (buffer-live-p buf)))
    (pop-to-buffer-same-window buf)
    (unless (derived-mode-p 'eshell-mode)
      (eshell-mode))
    buf))

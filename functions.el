(defun disable-magit-highlight-in-buffer () 
  (face-remap-add-relative 'magit-item-highlight '()))

(defun toggle-dired-dwim ()
  (interactive)
  (let ((crnt-value dired-dwim-target))
    (message "Flipping dired-dwim-target %s value" crnt-value)
    (if (eq crnt-value nil)
	(setq dired-dwim-target t)
      (setq dired-dwim-target nil))))

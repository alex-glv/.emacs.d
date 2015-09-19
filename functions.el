(require 'cl)

(defun disable-magit-highlight-in-buffer () 
  (face-remap-add-relative 'magit-item-highlight '()))

(defun make-small-buff (name)
  (let ((buf (get-buffer-create name)))
    (cl-assert (and buf (buffer-live-p buf)))
    (split-window-vertically 10)
    (switch-to-buffer buf)
    buf))

(defun toggle-dired-dwim ()
  (interactive)
  (let ((crnt-value dired-dwim-target))
    (message "Flipping dired-dwim-target %s value" crnt-value)
    (if (eq crnt-value nil)
	(setq dired-dwim-target t)
      (setq dired-dwim-target nil))))

(defun set-env-from-json (file)
    (require 'json)
    (let ((json-env (json-read-file file)))
      (mapc (lambda (element)
              (setenv  (format "%s" (car element)) (format "%s" (cdr element)))
              ) json-env )))

(defun eshell/clear ()
    (interactive)
    (let ((inhibit-read-only t))
      (erase-buffer)
      (eshell-send-input)))

(defun eshell-named (buffer-title)
  (interactive
   (cond ((equal current-prefix-arg '(4))
	  (list (read-string "Buffer title: " nil nil "...")))
	 (t
	  (list (apply 'concat
			(mapcar (lambda (char)
				  (replace-regexp-in-string "[^\\.a-z]" "-" (string char)))
				(buffer-name)))))))
  (let ((buf (get-buffer-create (format "*%s-eshell*" buffer-title))))
    (cl-assert (and buf (buffer-live-p buf)))
    (split-window-vertically 10)
    (switch-to-buffer buf)
    ;; todo: make sure CD is executed once the buffer is active, so PATH handlers and middleware is run
    (unless (derived-mode-p 'eshell-mode)
      (eshell-mode)
      (eshell/cd (eshell/pwd)))
    buf))

(defun modify-syntax-table-for-jsx ()
  (modify-syntax-entry ?< "(>")
  (modify-syntax-entry ?> ")<"))

(defun get-major-modes-ibuff-rules-list (mm-list result-list)
       (if mm-list
	 (let* ((cur-mm (car mm-list))
		(next-res-list-el `(,(symbol-name cur-mm) (mode . ,cur-mm))))
	   (get-major-modes-ibuff-rules-list (cdr mm-list) (cons next-res-list-el result-list)))
	 result-list))

(defun get-major-modes-list ()
  (mapcar
   (function (lambda (buffer) (buffer-local-value 'major-mode (get-buffer buffer))))
   (buffer-list (selected-frame))))

(defun create-buffs-group ()
  (interactive)
  (let* ((ignore-modes '(Buffer-menu-mode
			 compilation-mode
			 minibuffer-inactive-mode
			 ibuffer-mode
			 magit-process-mode
			 messages-buffer-mode
			 fundamental-mode
			 completion-list-mode
			 help-mode
			 Info-mode))
	 (cur-bufs (list (cons "Home"
			       (get-major-modes-ibuff-rules-list
				(cl-set-difference 
				 (remove-duplicates (get-major-modes-list)) ignore-modes) '())))))
    (setq ibuffer-saved-filter-groups cur-bufs)
    (ibuffer-switch-to-saved-filter-groups "Home")))

(defun get-cur-remote () (replace-regexp-in-string ".*\\(/.*?:/\\).*" "\\1" (thing-at-point 'line)))


(defun uniq-lines (beg end)
  "Unique lines in region.
Called from a program, there are two arguments:
BEG and END (region to sort)."
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (while (not (eobp))
        (kill-line 1)
        (yank)
        (let ((next-line (point)))
          (while
              (re-search-forward
               (format "^%s" (regexp-quote (car kill-ring))) nil t)
            (replace-match "" nil nil))
          (goto-char next-line))))))



(defun rest-client ()
  (interactive)
  (let ((buf (make-small-buff "rest-client")))
    (restclient-mode)))

(defun isearch-save-and-exit ()
  "Exit search normally. and save the `search-string' on kill-ring."
  (interactive)
  (isearch-done)
  (isearch-clean-overlays)
  (kill-new isearch-string))

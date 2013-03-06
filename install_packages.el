(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(paredit rainbow-delimiters clojure-mode nrepl framemove ac-nrepl dired-details  dired-details+ helm anything auto-complete golden-ratio gtags haml-mode helm magit nrepl json smex bookmark+ ido-ubiquitous)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

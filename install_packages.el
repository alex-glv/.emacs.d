(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(paredit rainbow-delimiters clojure-mode nrepl framemove ac-nrepl dired-details  dired-details+ helm auto-complete golden-ratio haml-mode magit nrepl json smex bookmark+ ido-ubiquitous php-mode helm-ls-git monokai-theme go-mode go-play go-autocomplete exec-path-from-shell)

  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(paredit
		      rainbow-delimiters
		      clojure-mode
		      cider
		      company
		      company-go
		      framemove
		      dired+
		      helm
		      haml-mode
		      magit
		      json
		      smex
		      bookmark+
		      ido-ubiquitous
		      php-mode
		      virtualenv
		      helm-ls-git
		      zenburn-theme
		      go-mode
		      go-play
		      exec-path-from-shell
		      multiple-cursors
		      apache-mode
		      dockerfile-mode
		      js2-mode
		      web-mode)

  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

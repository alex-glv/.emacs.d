(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(paredit rainbow-delimiters clojure-mode company company-go framemove dired+ helm golden-ratio haml-mode magit json smex bookmark+ ido-ubiquitous php-mode virtualenv helm-ls-git monokai-theme go-mode go-play exec-path-from-shell multiple-cursors apache-mode dockerfile-mode)

  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

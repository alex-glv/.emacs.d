(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(
                      restclient
                      avy
                      evil
                      clj-refactor
                      find-file-in-project
                      swiper
                      
                      counsel
                      multi-term
                      ;;		      ace-window
                      ;;		      smartparens
                      paredit
                      rainbow-delimiters
                      clojure-mode
                      cider
                      company
                      ;;		      nyan-mode
                      company-go
                      ;;		      framemove
                      dired+
                      ;;		      helm
                      haml-mode
                      magit
                      json
                      smex
                      bookmark+
                      ;;		      web-mode
                      ;;		      virtualenv
                      php+-mode
                      helm-ls-git
                      zenburn-theme
                      go-mode
                      ;;		      go-play
                      exec-path-from-shell
                      ;;		      multiple-cursors
                      apache-mode
                      dockerfile-mode
                      js2-mode
                      yasnippet
                      elpy
                      tern
                      company-tern
                      markdown-mode+
                      groovy-mode
                      golden-ratio
                      projectile
                      undo-tree)
  ;;		      aggressive-indent
  
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

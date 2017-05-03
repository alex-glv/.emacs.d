(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "#000000" :foreground "#F5F5F5" :bfox (:line-width 1 :color "#212121" :style unspecified)))))
 '(scroll-bar ((t (:underline nil :weight normal)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(cider-cljs-lein-repl
   "(do (require 'weasel.repl.websocket) (cemerick.piggieback/cljs-repl (weasel.repl.websocket/repl-env :ip \"127.0.0.1\" :port 9001)))")
 '(cider-refresh-before-fn nil)
 '(company-go-begin-after-member-access t)
 '(company-go-show-annotation t)
 '(company-idle-delay 0.2)
 '(cursor-type (quote box))
 '(custom-safe-themes
   (quote
    ("11636897679ca534f0dec6f5e3cb12f28bf217a527755f6b9e744bd240ed47e1" "196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" "19352d62ea0395879be564fc36bc0b4780d9768a964d26dfae8aad218062858d" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "2e5705ad7ee6cfd6ab5ce81e711c526ac22abed90b852ffaf0b316aa7864b11f" "09b2d2d662a17200bf6e84305c05202353dca027e352535dc221a7d3342cd0d9" "b06aaf5cefc4043ba018ca497a9414141341cb5a2152db84a9a80020d35644d1" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" default)))
 '(docker-containers-rm-arguments (quote ("-f")))
 '(elpy-rpc-pythonpath
   "/Users/sashka/.emacs.d/elpa/elpy-20160613.1005/:/Users/sashka/microservices-demo/testing/")
 '(fci-rule-color "#383838")
 '(grep-files-aliases
   (quote
    (("php" . "*.inc *.php")
     ("all" . "* .*")
     ("el" . "*.el")
     ("ch" . "*.[ch]")
     ("c" . "*.c")
     ("cc" . "*.cc *.cxx *.cpp *.C *.CC *.c++")
     ("cchh" . "*.cc *.[ch]xx *.[ch]pp *.[CHh] *.CC *.HH *.[ch]++")
     ("hh" . "*.hxx *.hpp *.[Hh] *.HH *.h++")
     ("h" . "*.h")
     ("l" . "[Cc]hange[Ll]og*")
     ("m" . "[Mm]akefile*")
     ("tex" . "*.tex")
     ("texi" . "*.texi")
     ("asm" . "*.[sS]"))))
 '(helm-buffer-skip-remote-checking t)
 '(ivy-format-function (quote ivy-format-function-arrow))
 '(ivy-mode t)
 '(linum-format (quote dynamic))
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-clock-rounding-minutes 5)
 '(org-support-shift-select nil)
 '(org-time-stamp-rounding-minutes (quote (5 15)))
 '(package-selected-packages
   (quote
    (flx-ido yaml-mode zenburn-theme smex restclient rainbow-delimiters projectile php+-mode multi-term markdown-mode+ magit js2-mode helm-ls-git haml-mode groovy-mode golden-ratio exec-path-from-shell evil elpy dockerfile-mode dired+ counsel company-tern company-go clj-refactor bookmark+ avy apache-mode)))
 '(python-shell-extra-pythonpaths (quote ("/Users/sashka/microservices-demo/testing")))
 '(scroll-bar-mode nil)
 '(search-nonincremental-instead nil)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

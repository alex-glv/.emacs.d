(deftheme Customsolar
  "Created 2012-10-27.")

(custom-theme-set-variables
 'Customsolar
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(custom-safe-themes (quote ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" default)))
 '(rainbow-delimiters-highlight-brackets-p nil)
 '(solarized-termcolors 256)
 '(tool-bar-mode nil)
 '(global-rainbow-delimiters-mode t))

(custom-theme-set-faces
 'Customsolar
 '(rainbow-delimiters-depth-3-face ((t (:foreground "Purple"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "OrangeRed4"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "thistle3")))))

(provide-theme 'Customsolar)

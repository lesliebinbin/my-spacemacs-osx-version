(require 'cl-lib)
(setq treemacs-width 25)
(add-to-list 'spacemacs-default-company-backends #'company-tabnine)
(require 'lsp-java)
;;(require 'lsp-java-boot)
;; (add-hook 'lsp-mode-hook #'lsp-lens-mode)
;; (add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)
(add-to-list 'lsp-java-vmargs "-javaagent:/Users/lesliebinbin/.spacemacs.d/.some-tools/lombok-1.18.6.jar")
(setq leetcode-prefer-language "python3")
(setq leetcode-prefer-sql "mysql")
(setq url-debug t)
;; (setq auto-mode-alist (append '(("\\.\\(gp\\|gnuplot\\)$" . gnuplot-mode)) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.\\(gp\\|gnuplot\\)$" . gnuplot-mode))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((gnuplot . t)))
(setq org-gcal-client-id (getenv "GCAL_CLIENT_ID")
      org-gcal-client-secret (getenv "GCAL_CLIENT_SECRET")
      org-gcal-file-alist '(("lesliebinbin19900129@gmail.com" . "~/.spacemacs.d/calendars/leslie.org")))
(setq org-agenda-files '("~/.spacemacs.d/calendars/leslie.org"))
(setq browse-url-browser-function 'browse-url-generic
      engine/browser-function 'browse-url-generic
      browse-url-generic-program "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")
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
(setq org-gcal-client-id "494995794423-98b7kgbjjlij2rdp3fs57c2o3ll5v4r6.apps.googleusercontent.com"
      org-gcal-client-secret "TCIw6xklHLK-cKZUNtHtHheB"
      org-gcal-file-alist '(("lesliebinbin19900129@gmail.com" . "~/.spacemacs.d/calendars/leslie.org")))
(setq org-agenda-files '("~/.spacemacs.d/calendars/leslie.org"))

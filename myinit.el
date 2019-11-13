(require 'cl-lib)
(setq treemacs-width 25)
(add-to-list 'spacemacs-default-company-backends #'company-tabnine)
(require 'lsp-java)
;;(require 'lsp-java-boot)
;; (add-hook 'lsp-mode-hook #'lsp-lens-mode)
;; (add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)
(add-to-list 'lsp-java-vmargs "-javaagent:/Users/lesliebinbin/.spacemacs.d/.some-tools/lombok-1.18.6.jar")
(setq leetcode-prefer-language "c")
(setq leetcode-prefer-sql "mysql")
(setq url-debug t)
;; (setq auto-mode-alist (append '(("\\.\\(gp\\|gnuplot\\)$" . gnuplot-mode)) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.\\(gp\\|gnuplot\\)$" . gnuplot-mode))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((gnuplot . t)
   (ruby . t)
   (lisp . t)
   (clojure . t)
   ))

(setq org-gcal-client-id (getenv "GCAL_CLIENT_ID")
      org-gcal-client-secret (getenv "GCAL_CLIENT_SECRET")
      org-gcal-file-alist '(("lesliebinbin19900129@gmail.com" . "~/.spacemacs.d/calendars/leslie.org")))
(setq org-agenda-files '("~/.spacemacs.d/calendars/leslie.org"))
(setq browse-url-browser-function 'browse-url-generic
      engine/browser-function 'browse-url-generic
      browse-url-generic-program "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")
(slack-register-team
 :name "UQIxDThesis"
 :default t
 :client-id (getenv "SLACK_CLIENT_ID")
 :client-secret (getenv "SLACK_SECRET")
 :token "token" (getenv "SLACK_TOKEN")
 :subscribed-channels '(general slackbot))
(setq spotify-oauth2-client-secret (getenv "SPOTIFY_OAUTH_CLIENT_SECRET"))
(setq spotify-oauth2-client-id (getenv "SPOTIFY_OAUTH_CLIENT_ID"))
(setq spotify-transport 'connect)

(prodigy-define-service
  :name "nikola-auto"
  :command "/Users/lesliebinbin/Desktop/myproject/.venv/bin/nikola"
  :args '("auto")
  :cwd "/Users/lesliebinbin/Desktop/myproject/"
  :tags '(nikola auto blog)
  :stop-signal 'sigint
  )

(prodigy-define-service
  :name "nikola-deploy"
  :command "/Users/lesliebinbin/Desktop/myproject/.venv/bin/nikola"
  :args '("github_deploy")
  :cwd "/Users/lesliebinbin/Desktop/myproject/"
  :tags '(nikola deploy github)
  :stop-signal 'sigint
  )

(prodigy-define-service
  :name "nikola-new-post"
  :command "/Users/lesliebinbin/Desktop/myproject/.venv/bin/nikola"
  :args '("new_post -f orgmode")
  :cwd "/Users/lesliebinbin/Desktop/myproject/"
  :tags '(nikola new-post org-mode)
  :stop-signal 'sigint
  )

(setq nikola-new-post-extension "org")

(setq easy-hugo-basedir "~/Desktop/myproject/")

(defun config-the-gradlew ()
  (setq gradle-use-gradlew t)
  (setq gradle-gradlew-executable "./gradlew")
  )

(config-the-gradlew)

(defun config-projectile ()
  (setq projectile-project-search-path '("~/Desktop/uq_courses/" "~/Desktop/cs_courses/"))
  )
(config-projectile)

(defun my-config-latex ()
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  (setq LaTeX-item-indent 0)
  (add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
  )
(my-config-latex)

(defun config-my-pdf-tools ()
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)
  )
(config-my-pdf-tools)

(defun config-my-emmet ()
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook 'emmet-mode)
  (setq emmet-expand-jsx-className? t)
  )
(config-my-emmet)

(defun config-my-golang ()
  (setq go-format-before-save t))
(config-my-golang)

(add-to-list 'spacemacs-default-company-backends #'company-tabnine)

(setq-default enable-remote-dir-locals t)

(setq browse-url-browser-function 'browse-url-generic
           engine/browser-function 'browse-url-generic
           browse-url-generic-program "/usr/bin/google-chrome")

     (setq treemacs-width 20)

(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)

     (defun config-the-gradlew ()
       (setq gradle-use-gradlew t)
       (setq gradle-gradlew-executable "./gradlew")
       )

     (config-the-gradlew)

     (setq exwm-workspace-number 6)
     (require 'exwm-randr)
     (setq exwm-randr-workspace-output-plist '(0 "eDP-1-1" 1 "HDMI-1-1" 2 "HDMI-1-1" 3 "HDMI-1-1"))
     (add-hook 'exwm-randr-screen-change-hook
               (lambda ()
                 (start-process-shell-command
                  "xrandr" nil "xrandr --output LVDS-1 --right-of HDMI-1 --auto --noprimary")
                 (message "Come on, my codes must be f**king works.")
                 )
               )
     (exwm-randr-enable)

   (setq fancy-splash-image "~/.doom.d/banners/space.png")

   (require 'spotify)
   (setq spotify-oauth2-client-secret "fe05aecbbe024f32b1016173196b1109")
   (setq spotify-oauth2-client-id "7924517309e444cda268a2d146fe2bb1")

   (define-key spotify-mode-map (kbd "C-c .") 'spotify-command-map)

     (setq-default enable-remote-dir-locals t)
     (setq shell-prompt-pattern '"^[^#$%>\n]*~?[#$%>] *")

     (setq +mu4e-backend 'offlineimap)
     ;;mu4e
     (after! 'mu4e
     (require 'mu4e-conversation))

     (setq mu4e-maildir "~/.mail"
           mu4e-update-interval 240
           mu4e-view-show-images t
           mu4e-view-show-addresses t
           org-mu4e-convert-to-html t)
      (require 'mu4e)
     (setq mu4e-contexts
           `(
             ;; gmail
             ,(make-mu4e-context
               :name "Gmail"
               :enter-func (lambda () (mu4e-message "Switch to the Gmail context"))
               ;; leave-func not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "lesliebinbin19900129@gmail.com")))
               :vars '(  ( user-mail-address      . "lesliebinbin19900129@gmail.com")
                         ( user-full-name     . "Leslie Binbin" )
                         (mu4e-get-mail-command . "offlineimap -a Gmail")
                         (mu4e-sent-messages-behavior . delete)
                         (mu4e-sent-folder . "/lesliebinbin19900129@gmail.com/[Gmail].Sent Mail")
                         (mu4e-drafts-folder . "/lesliebinbin19900129@gmail.com/[Gmail].Drafts")
                         (mu4e-trash-folder . "/lesliebinbin19900129@gmail.com/[Gmail].Trash")
                         (mu4e-retfile-folder . "/lesliebinbin19900129@gmail.com/[Gmail].All Mail")
                         (user-mail-address . "lesliebinbin19900129@gmail.com")
                         (smtpmail-stream-type . ssl)
                         (smtpmail-default-smtp-server . "smtp.gmail.com")
                         (smtpmail-smtp-server . "smtp.gmail.com")
                         (smtpmail-smtp-service . 465)
                         (smtpmail-smtp-user . "lesliebinbin19900129@gmail.com")
                         (smtpmail-debug-verb . t)
                         (send-mail-function . smtpmail-send-it)
                         ))
             ;; gmail
             ;;UQ
             ,(make-mu4e-context
               :name "UQ"
               :enter-func (lambda () (mu4e-message "Switch to the UQ context"))
               ;; leave-func not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "zhibin.huang@uqconnect.edu.au")))
               :vars '(  ( user-mail-address      . "zhibin.huang@uqconnect.edu.au"  )
                         ( user-full-name     . "Zhibin Huang" )
                         (mu4e-get-mail-command . "offlineimap -a UQ-Outlook")
                         (mu4e-sent-messages-behavior . delete)
                         (mu4e-sent-folder . "/zhibin.huang@uqconnect.edu.au/Sent Items")
                         (mu4e-drafts-folder . "/zhibin.huang@uqconnect.edu.au/Drafts")
                         (mu4e-trash-folder . "/zhibin.huang@uqconnect.edu.au/Deleted Items")
                         (mu4e-retfile-folder . "/zhibin.huang@uqconnect.edu.au/Inbox")
                         (user-mail-address . "zhibin.huang@uqconnect.edu.au")
                         (smtpmail-default-smtp-server . "smtp-mail.outlook.com")
                         (smtpmail-smtp-server . "smtp-mail.outlook.com")
                         (smtpmail-stream-type . starttls)
                         (smtpmail-smtp-service . 587)
                         (smtpmail-smtp-user . "zhibin.huang@uqconnect.edu.au")
                         (smtpmail-debug-verb . t)
                         (send-mail-function . smtpmail-send-it)
                         ))
             ;;UQ


             ;;UQ-Tutor
             ,(make-mu4e-context
               :name "Tutor-UQ"
               :enter-func (lambda () (mu4e-message "Switch to the UQ Tutor context"))
               ;; leave-func not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "zhibin.huang@uq.edu.au")))
               :vars '(  ( user-mail-address      . "zhibin.huang@uq.edu.au"  )
                         ( user-full-name     . "Tutor Zhibin" )
                         (mu4e-get-mail-command . "offlineimap -a UqTutor")
                         (mu4e-sent-messages-behavior . delete)
                         (mu4e-sent-folder . "/zhibin.huang@uq.edu.au/Sent Items")
                         (mu4e-drafts-folder . "/zhibin.huang@uq.edu.au/Drafts")
                         (mu4e-trash-folder . "/zhibin.huang@uq.edu.au/Deleted Items")
                         (mu4e-retfile-folder . "/zhibin.huang@uq.edu.au/Inbox")
                         (user-mail-address . "zhibin.huang@uq.edu.au")
                         (smtpmail-default-smtp-server . "smtp-mail.outlook.com")
                         (smtpmail-smtp-server . "smtp-mail.outlook.com")
                         (smtpmail-stream-type . starttls)
                         (smtpmail-smtp-service . 587)
                         (smtpmail-smtp-user . "zhibin.huang@uq.edu.au")
                         (smtpmail-debug-verb . t)
                         (send-mail-function . smtpmail-send-it)
                         ))
             ;;UQ-Tutor


             ;;tutor-live-account


             ,(make-mu4e-context
               :name "Onedrive Tutor"
               :enter-func (lambda () (mu4e-message "Switch to the Tutor One Drive context"))
               ;; leave-func not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "huangzhibin11@live.com")))
               :vars '(  ( user-mail-address      . "huangzhibin11@live.com"  )
                         ( user-full-name     . "Zhibin Huang" )
                         (mu4e-get-mail-command . "offlineimap -a TutorLiveAccount")
                         (mu4e-sent-messages-behavior . delete)
                         (mu4e-sent-folder . "/huangzhibin11@live.com/Sent")
                         (mu4e-drafts-folder . "/huangzhibin11@live.com/Drafts")
                         (mu4e-trash-folder . "/huangzhibin11@live.com/Junk")
                         (mu4e-retfile-folder . "/huangzhibin11@live.com/Inbox")
                         (user-mail-address . "huangzhibin11@live.com")
                         (smtpmail-default-smtp-server . "smtp-mail.outlook.com")
                         (smtpmail-smtp-server . "smtp-mail.outlook.com")
                         (smtpmail-stream-type . starttls)
                         (smtpmail-smtp-service . 587)
                         (smtpmail-smtp-user . "huangzhibin11@live.com")
                         (smtpmail-debug-verb . t)
                         (send-mail-function . smtpmail-send-it)
                         ))

             ;;tutor-live-account

             ;;SpacePlatform
             ,(make-mu4e-context
               :name "SpacePlatform"
               :enter-func (lambda () (mu4e-message "Switch to the SpacePlatform context"))
               ;; leave-func not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "zhibin@spaceplatform.co")))
               :vars '(  ( user-mail-address      . "zhibin@spaceplatform.co"  )
                         ( user-full-name     . "Zhibin Huang" )
                         (mu4e-get-mail-command . "offlineimap -a SpacePlatform")
                         (mu4e-sent-messages-behavior . delete)
                         (mu4e-sent-folder . "/zhibin@spaceplatform.co/Sent Items")
                         (mu4e-drafts-folder . "/zhibin@spaceplatform/Drafts")
                         (mu4e-trash-folder . "/zhibin@spaceplatform/Trash")
                         (mu4e-retfile-folder . "/zhibin@spaceplatform/Inbox")
                         (user-mail-address . "zhibin@spaceplatform")
                         (smtpmail-default-smtp-server . "mail.spaceplatform.co")
                         (smtpmail-smtp-server . "mail.spaceplatform.co")
                         (smtpmail-stream-type . starttls)
                         (smtpmail-smtp-service . 587)
                         (smtpmail-smtp-user . "zhibin@spaceplatform.co")
                         (smtpmail-debug-verb . t)
                         (send-mail-function . smtpmail-send-it)
                         ))
             ;;SpacePlatform
             ))


     (when (fboundp 'imagemagick-register-types)
       (imagemagick-register-types))

     (after! 'mu4e-alert
       (mu4e-alert-set-default-style 'libnotify))


     ;;mu4e

     (require 'org-msg)
     (setq 
           mail-user-agent 'mu4e-user-agent
           org-msg-options "html-postamble:nil H:5 num:nil ^:{} toc:nil"
           org-msg-startup "hidestars indent inlineimages"
           org-msg-greeting-fmt "\nHi *%s*,\n\n"
           org-msg-greeting-name-limit 3
           org-msg-signature "

     Best Regards,

     #+begin_signature
     -- *Leslie Binbin* \\\\
     /One Emacs to rule them all/
     #+end_signature")
     (org-msg-mode)

(setq projectile-project-search-path "/home/zhibin/Desktop/codes")

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

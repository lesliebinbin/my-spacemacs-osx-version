(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(0 "LVDS-1" 1 "HDMI-1"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output LVDS-1 --right-of HDMI-1 --auto --noprimary")
            (message "haha, my code works.")
            )
          )
(exwm-randr-enable)

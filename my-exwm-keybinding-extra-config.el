(require 'exwm)
(require 'exwm-config)
(defun config-extra-exwm-kb ()
  (
   ;; lock screen
   ;; fn key bindings
   (exwm-input-set-key (kbd "<XF86AudioRaiseVolume>") #'turn-volume-up)
   (exwm-input-set-key (kbd "<XF86AudioLowerVolume>") #'turn-volume-down)
   (exwm-input-set-key (kbd "<XF86AudioMute>") #'toggle-volume-mute)
   (exwm-input-set-key (kbd "<XF86AudioPlay>") #'spotify-playpause)
   (exwm-input-set-key (kbd "<XF86AudioNext>") #'spotify-next)
   (exwm-input-set-key (kbd "<XF86AudioPrev>") #'spotify-previous)
   (exwm-input-set-key (kbd "<XF86KbdBrightnessUp>") #'kbd-brightness-up)
   (exwm-input-set-key (kbd "<XF86KbdBrightnessDown>") #'kbd-brightness-down)
   (exwm-input-set-key (kbd "<XF86LaunchA>") #'lock-screen)
   (exwm-input-set-key (kbd "<XF86LaunchB>") #'spacemacs/toggle-maximize-buffer)
   ))

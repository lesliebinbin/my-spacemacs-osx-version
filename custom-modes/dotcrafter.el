(define-minor-mode
  dotcrafter-mode
  "Toggle global dotcrafter-mode"
  nil
  :global t
  :group 'dotfiles
  :lighter " dotcrafter"
  :keymap
  (list (cons (kbd "C-c C-. t") (lambda () (interactive) (message "dotcrafter key binding used!"))))

  (if dotcrafter-mode
      (message "dotcrafter-mode activated!")
    (message "dotcrafter-mode deactivated!")))

(add-hook 'dotcrafter-mode-hook (lambda () (message "Hook was executed!")))
(add-hook 'dotcrafter-mode-on-hook (lambda () (message "dotcrafter turned on!")))
(add-hook 'dotcrafter-mode-off-hook (lambda () (message "dotcrafter turned off!")))

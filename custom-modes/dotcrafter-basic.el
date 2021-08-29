(make-variable-buffer-local (defvar dotcrafter-basic-mode nil "Toggle dotcrafter-basic-mode"))

(defvar dotcrafter-basic-mode-map (make-sparse-keymap)
  "The keymap for dotcrafter-basic-mode")

(define-key dotcrafter-basic-mode-map (kbd "C-c C-. t") (lambda ()
                                                          (interactive)
                                                          (message "dotcrafter key binding used!")))

(add-to-list 'minor-mode-alist
             '(dotcrafter-basic-mode " dotcrafter"))
(add-to-list 'minor-mode-map-alist
             (cons 'dotcrater-basic-mode dotcrafter-basic-mode-map))

(defun dotcrafter-basic-mode (&optional ARG)
  (interactive (list 'toggle))
  (setq dotcrafter-basic-mode (if (eq ARG 'toggle)
                                  (not dotcrafter-basic-mode)
                                (> ARG 0)))
  (if dotcrafter-basic-mode
      (message "dotcrafter-basic-mode activated!")
    (message "dotcrafter-basic-mode deactivated!")))

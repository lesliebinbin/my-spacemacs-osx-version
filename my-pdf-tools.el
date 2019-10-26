(defun config-my-pdf-tools ()
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)
  )

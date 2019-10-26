(defun config-my-mosh ()
  (require 'tramp)
  (add-to-list 'tramp-methods
               (list "mosh"
                     '(tramp-login-program "mosh")
                     '(tramp-remote-shell "/bin/sh")
                     '(tramp-remote-shell-login ("-l"))
                     '(tramp-remote-shell-args ("-c"))
                     )))

;;; packages.el --- blog-admin layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Zhibin Huang <lesliebinbin@Zhibins-MacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `blog-admin-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `blog-admin/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `blog-admin/pre-init-PACKAGE' and/or
;;   `blog-admin/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst blog-admin-packages '(blog-admin)
  "The list of Lisp packages required by the blog-admin layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun blog-admin/init-blog-admin ()
  (use-package blog-admin
    :ensure t
    :defer t
    :init (progn
              (setq blog-admin-backend-type 'nikola)
              (setq blog-admin-backend-path "~/Desktop/myproject/")
              (setq blog-admin-backend-new-post-in-drafts
                    t)
              (setq blog-admin-backend-nikola-executable
                    "~/Desktop/myproject/.venv/bin/nikola") ;; path to nikola executable
              )))

;;; packages.el ends here

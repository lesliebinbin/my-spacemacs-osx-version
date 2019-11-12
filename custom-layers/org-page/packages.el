;;; packages.el --- org-page layer packages file for Spacemacs.
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
;; added to `org-page-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `org-page/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `org-page/pre-init-PACKAGE' and/or
;;   `org-page/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst org-page-packages
  '(org-page)
  "The list of Lisp packages required by the org-page layer.

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

(defun org-page/init-org-page ()
  (spacemacs/declare-prefix "ab" "blog")
  (use-package org-page
    :config (progn (setq op/repository-directory "~/.spacemacs.d/docs/"
                         op/site-main-title "Leslie's Geek Blog"
                         op/site-sub-title "Coding In Live"
                         op/site-domain "https://lesliebinbin.github.io"
                         op/personal-github-link "https://github.com/lesliebinbin"
                         op/personal-disqus-shortname "zhibin huang"
                         op/personal-duoshuo-shortname "binbin"
                         )
                   )))
;;; packages.el ends here

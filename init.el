;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/custom-layers/")

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(graphviz
                restclient
                (php :variables php-backend 'lsp)
                xkcd
                bm
                erc
                gpu
                epub
                django
                evil-commentary
                vim-empty-lines
                (sql :variables sql-capitalize-keywords t)
                lsp
                dap
                yaml
                crystal
                (javascript :variables
                            javascript-import-tool 'import-js
                            javascript-backend 'lsp
                            javascript-fmt-tool 'prettier
                            javascript-fmt-on-save t
                            node-add-modules-path t
                            js2-include-node-externs t)
                (html :variables
                      css-enable-lsp t
                      less-enable-lsp t
                      scss-enable-lsp t
                      web-fmt-tool 'web-beautify)

                (clojure :variables
                         clojure-enable-fancify-symbols t
                         clojure-enable-sayid t
                         clojure-enable-clj-refactor t
                         clojure-enable-linters 'clj-kondo)
                (python :variables
                        python-fill-column 79
                        python-backend 'anaconda
                        python-formatter 'yapf
                        python-format-on-save t
                        python-sort-imports-on-save t
                        python-pipenv-activate nil)
                (java :variables
                      java-backend 'lsp
                      ;; java-backend 'meghanada
                      )
                (c-c++ :variables
                       c-c++-default-mode-headers 'c++-mode
                       ;; c-c++-backend 'lsp-clangd
                       c-c++-backend 'lsp-ccls
                       ;;c-c++-backend 'rtags
                       c-c++-enable-rtags-completion nil
                       c-c++-adopt-subprojects t
                       c-c++-lsp-enable-semantic-highlight 'rainbow
                       c-c++-enable-clang-support t
                       ;; the configuration of clangd perhaps
                       ;; c++-enable-organize-includes-on-save t
                       c-c++-enable-clang-format-on-save t
                       c-c++-enable-google-style t
                       c-c++-enable-google-newline t
                       c-c++-enable-auto-newline t)
                erlang
                common-lisp
                semantic
                (vue :variables vue-backend 'lsp)
                (ruby :variables
                      ruby-enable-enh-ruby-mode t
                      ruby-backend 'lsp
                      ruby-version-manager 'rbenv
                      )

                phoenix
                dotnet

                (lua :variables lua-backend 'lsp-emmy
         lua-lsp-emmy-jar-path "/home/zhibin/Desktop/codes-from-github/EmmyLua-LanguageServer/EmmyLua-LS/build/libs/EmmyLua-LS-all.jar"
         )
                ruby-on-rails

    (kotlin :variables
      kotlin-backend 'lsp
      kotlin-lsp-jar-path "/home/zhibin/Desktop/codes-from-github/kotlin-language-server/server/build/install/server/bin/kotlin-language-server")
                fsharp
                kubernetes
                (scala :variables
                      scala-backend 'scala-metals
                      scala-enable-eldoc t
                      scala-auto-start-backend t)
                asm
                (go :variables
                    go-backend 'lsp
                    go-tab-width 4
                    go-use-gometalinter t
                    gofmt-command "goimports")
                hy
                (typescript :variables
                            typescript-fmt-on-save t
                            typescript-linter 'tslint
                            typescript-backend 'lsp)
                (rust :variables
                      rust-backend 'lsp
                      rust-format-on-save t)
                (groovy :variables
                        groovy-backend 'lsp
                        groovy-lsp-jar-path "/home/zhibin/Desktop/codes-from-github/groovy-language-server/build/libs/groovy-language-server-all.jar")
                (haskell :variables
                         haskell-completion-backend 'lsp
                         haskell-enable-hindent t
                         )
                (elm :variables
                     elm-format-command "elm-format"
          elm-sort-imports-on-save t
                     elm-format-on-save t)
                (elixir :variables
                        elixir-backend 'lsp
      elixir-ls-path "/home/zhibin/Desktop/codes-from-github/elixir-ls/release"
                        )
                csharp
                nim
                racket
                prolog
                protobuf
                ;; ----------------------------------------------------------------
                ;; Example of useful layers you may want to use right away.
                ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
                ;; `M-m f e R' (Emacs style) to install them.
                ;; ----------------------------------------------------------------
                (auto-completion :variables
                                 auto-completion-enable-snippets-in-popup t
                                 auto-completion-enable-help-tooltip nil
                                 auto-completion-enable-sort-by-usage t
                                 auto-completion-complete-with-key-sequence-delay 0.2
                                 auto-completion-idle-delay 1
                                 auto-completion-use-company-box t
                                 ;; auto-completion-minimum-prefix-length 3
                                 auto-completion-complete-with-key-sequence "jk"
                                 :disabled-for org git
                                 )
                (ess :variables
                     ess-enable-smart-equals t)
                ;; ess
                react
                better-defaults
                emacs-lisp
                git
                github
                myleetcode
                (helm :variables helm-enable-auto-resize t)
                ;;(ivy :variables
                ;;     ivy-enable-advanced-buffer-information t)
                (markdown :variables
                          markdown-live-preview-engine 'vmd
                          markdown-mmm-auto-modes '("c" "c++" "scala" ("elisp" "emacs-lisp")))
                (cmake :variables
                       cmake-enable-cmake-ide-support t)
                (latex :variables
                       latex-enable-auto-fill t
                       latex-enable-folding t)
                bibtex
                multiple-cursors
                (org :variables
                     org-enable-github-support t
                     org-enable-reveal-js-support t
                     org-enable-trello-support t
                     org-enable-hugo-support t
                     org-enable-bootstrap-support t)
                (shell :variables
                       shell-default-height 30
                       shell-default-position 'bottom)
                spell-checking
                syntax-checking
                ipython-notebook
                treemacs
                version-control
                docker
                vagrant
                nginx
                pdf
                (mu4e :variables
                      ;;mu4e-installation-path "/usr/local/share/emacs/site-lisp/mu/"
                      mu4e-enable-notifications t
                      mu4e-enable-mode-line t
                      ;; mu4e-enable-async-operations t
                      )
                (geolocation :variables
                             geolocation-enable-location-service t
                             geolocation-enable-weather-forecast t)
                exwm


                spotify
                ;;multiple-cursors
                multiple-cursors
                ;;multiple-cursors
                ;;pandoc
                pandoc
                ;;pandoc
                ;;games
                games
                ;;games
                spacemacs-language
                (ranger :variables
                      ranger-show-preview t
                      ranger-show-hidden t
                      ranger-cleanup-eagerly t
                      ranger-cleanup-on-disable t
                      ranger-show-literal nil
                      ranger-width-preview 0.5
                      ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))
               elasticsearch
               ;;google-calendar
               search-engine
               ;; tabnine
               csv
               emms-player
               prodigy
               easy-hugo
               selectric
               (twitter :variables twittering-use-master-password t)
               (elfeed :variables
                       ;; elfeed-enable-web-interface t
                       rmh-elfeed-org-files (list "~/.spacemacs.d/.feeds/feed.org")
                       )
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(
     atomic-chrome
     dracula-theme
     calfw-org
     org-msg
     mu4e-conversation
     jupyter
     ;; selectric-mode
     quickrun
     flutter
     latex-preview-pane
     pretty-mode

     ;; ivy-hydra
   )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner "/home/zhibin/.spacemacs.d/banners/Pornhub-logo.png"

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         afternoon
                         wheatgrass
                         material
                         dracula
                         twilight
                         zen-and-art
                         monochrome
                         spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Lucida Console"
                               :size 14.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers t

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'all

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e/")
  (add-to-list 'load-path "/home/zhibin/.spacemacs.d/custom-modes/")
  (require 'mu4e)
  (setq mail-user-agent 'mu4e-user-agent)
  (org-babel-load-file (expand-file-name "myinit.org" "~/.spacemacs.d/"))
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(package-selected-packages
   (quote
    (opencl-mode glsl-mode cuda-mode company-glsl pony-mode dotnet unicode-escape names latex-preview-pane fsharp-mode eglot flymake jsonrpc systemd twilight-theme ivy-hydra kubernetes-tramp kubernetes-evil kubernetes es-mode spark flutter dart-mode ansi package-build shut-up epl git commander f dash s selectric-mode jupyter zmq polymode nov esxml bm rcirc-styles erc-tweet pyim pyim-basedict xr pangu-spacing find-by-pinyin-dired fcitx chinese-conv ace-pinyin pinyinlib erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks jabber srv fsm yasnippet-snippets yapfify yaml-mode xterm-color xkcd x86-lookup ws-butler writeroom-mode winum which-key web-mode web-beautify vterm volatile-highlights vmd-mode vi-tilde-fringe vagrant-tramp vagrant uuidgen use-package unfill typit twittering-mode treemacs-projectile treemacs-magit treemacs-evil toml-mode toc-org tide tagedit symon symbol-overlay sunshine sudoku string-inflection stickyfunc-enhance srefactor sqlup-mode sql-indent spotify spaceline-all-the-icons smeargle slime-company slim-mode slack shell-pop seeing-is-believing scss-mode sass-mode rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe rjsx-mode restclient-helm restart-emacs rbenv ranger rake rainbow-delimiters racket-mode racer pytest pyenv-mode py-isort pug-mode prodigy prettier-js pippel pipenv pip-requirements phpunit phpcbf php-extras php-auto-yasnippets persp-mode perl6-mode password-generator paradox pandoc-mode pacmacs ox-twbs ox-pandoc ox-hugo ox-gfm overseer orgit org-trello org-ref org-re-reveal org-projectile org-present org-pomodoro org-msg org-mime org-gcal org-download org-cliplink org-bullets org-brain open-junk-file omnisharp ob-restclient ob-ipython ob-hy ob-http nodejs-repl nim-mode nginx-mode nasm-mode nameless mwim mvn multi-term mu4e-maildirs-extension mu4e-conversation mu4e-alert move-text monochrome-theme mmm-mode minitest meghanada maven-test-mode material-theme markdown-toc magit-svn magit-gitflow lsp-ui lsp-treemacs lsp-python-ms lsp-java lsp-haskell lorem-ipsum livid-mode live-py-mode link-hint leetcode kotlin-mode json-navigator js2-refactor js-doc intero indent-guide importmagic impatient-mode hybrid-mode hy-mode hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-spotify-plus helm-rtags helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-org helm-mu helm-mode-manager helm-make helm-lsp helm-ls-git helm-hoogle helm-gitignore helm-git-grep helm-flx helm-descbinds helm-ctest helm-css-scss helm-company helm-c-yasnippet helm-ag haskell-snippets groovy-mode groovy-imports graphviz-dot-mode gradle-mode google-translate google-c-style golden-ratio godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc gnuplot gmail-message-mode gitignore-templates github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md fuzzy forge font-lock+ flyspell-correct-helm flymd flycheck-ycmd flycheck-rust flycheck-rtags flycheck-pos-tip flycheck-perl6 flycheck-package flycheck-nim flycheck-kotlin flycheck-haskell flycheck-elm flx-ido fill-column-indicator fancy-battery eyebrowse exwm expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu ess-R-data-view eshell-z eshell-prompt-extras esh-help ensime engine-mode emoji-cheat-sheet-plus emms emmet-mode elm-test-runner elm-mode elisp-slime-nav elfeed-org elfeed-goodies ein editorconfig edit-server easy-hugo dumb-jump drupal-mode dracula-theme dotenv-mode doom-modeline dockerfile-mode docker disaster diminish diff-hl devdocs define-word dap-mode dante cython-mode csv-mode cquery cpp-auto-include company-ycmd company-web company-tern company-tabnine company-statistics company-rtags company-restclient company-reftex company-quickhelp company-php company-lsp company-go company-ghci company-ghc company-emoji company-cabal company-c-headers company-box company-auctex company-anaconda common-lisp-snippets column-enforce-mode cmm-mode cmake-mode cmake-ide clojure-snippets clean-aindent-mode clang-format cider-eval-sexp-fu cider chruby centered-cursor-mode ccls cargo calfw-org calfw bundler browse-at-remote blacken auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk attrap atomic-chrome aggressive-indent afternoon-theme add-node-modules-path ace-link ace-jump-helm-line ac-ispell 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)

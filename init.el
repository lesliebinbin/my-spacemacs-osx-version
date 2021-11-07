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
   '(typescript
     (nim :variables nim-backend 'lsp)
     csv
     debug
     racket
     quickurl
     ipython-notebook
     (ibuffer :variables ibuffer-group-buffers-by 'projects)
     (solidity :variables
               solidity-flycheck-solc-checker-active t)
     (xclipboard :variables xclipboard-enable-cliphist t)
     reddit
     (groovy :variables
             groovy-backend 'lsp
             groovy-lsp-jar-path "/Users/zhibinhuang/.emacs.d/.cache/lsp/groovy-language-server-all.jar"
             )
     imenu-list
     restclient
     xkcd
     outshine
     command-log
     docker
     common-lisp
     pandoc
     cmake
     epub
     (c-c++ :variables
            c-c++-default-mode-headers 'c++-mode
            ;;c-c++-backend 'rtags
            ;; c-c++-backend 'lsp-clangd
            c-c++-backend 'lsp-ccls
            c-c++-adopt-subprojects t
            c-c++-lsp-enable-semantic-highlight 'rainbow
            c-c++-enable-clang-support t
            ;; the configuration of clangd perhaps
            ;;c++-enable-organize-includes-on-save t
            c-c++-enable-clang-format-on-save t
            c-c++-enable-google-style t
            c-c++-enable-google-newline t
            ;; c-c++-enable-auto-newline t
            )
     (cmake :variables
            cmake-enable-cmake-ide-support t
            cmake-backend 'lsp)
     (erc :variables
          erc-enable-sasl-auth t)
     prettier
     web-beautify
     eaf
     spotify
     (python :variables
             python-fill-column 79
             python-backend 'lsp
             python-lsp-server 'pyright
             python-formatter 'yapf
             ;; python-format-on-save t
             ;; python-sort-imports-on-save t
             python-tab-width 4
             python-pipenv-activate nil)
     (ranger :variables
             ranger-show-preview t
             ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
             ranger-show-literal nil
             ranger-width-preview 0.5
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))
     spacemacs-language
     kubernetes
     vagrant
     ;; exwm
     yaml
     html
     tmux
     json
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion
      :variables
      auto-completion-enable-snippets-in-popup t
      auto-completion-enable-sort-by-usage t
      auto-completion-use-company-box t
      auto-completion-complete-with-key-sequence-delay 0.5
      auto-completion-idle-delay 0.0
      :disabled-for
      org
      git
      )
     compleseus
     java
     better-defaults
     emacs-lisp
     (rust :variables
           rust-backend 'lsp
           rust-format-on-save t
           cargo-process-reload-on-modify t)
     import-js
     (javascript :variables
                 javascript-import-tool 'import-js
                 javascript-backend 'lsp
                 javascript-fmt-tool 'prettier
                 ;; javascript-fmt-on-save t
                 node-add-modules-path t
                 js2-include-node-externs t)

     (git :variables
          git-enable-magit-gitflow-plugin t
          git-enable-magit-todos-plugin t
          )
     (node :variables node-add-modules-path t)
     semantic
     selectric
     github
     ;; (geolocation :variables
     ;;              geolocation-enable-automatic-theme-changer t
     ;;              geolocation-enable-location-service t
     ;;              )
     (helm :variables
           helm-enable-auto-resize t)
     (vue :variables
          vue-backend 'lsp
          )
     (lsp :variables
          lsp-lens-enable t
          lsp-headerline-breadcrumb-segments '(project file symbols)
          lsp-use-lsp-ui t
          lsp-modeline-code-actions-enable nil
          lsp-ui-doc-include-signature t
          )
     (markdown :variables
               markdown-live-preview-engine 'vmd
               markdown-open-command "/usr/local/bin/markdown"
               )
     multiple-cursors
     (org :variables
          org-ellipsis " ▼"
          org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")
          org-hide-emphasis-markers t
          org-enable-github-support t
          org-enable-reveal-js-support t
          org-enable-trello-support t
          org-enable-hugo-support t
          org-enable-bootstrap-support t
          org-agenda-start-with-log-mode t
          org-log-done 'timer
          org-log-into-drawer t
          org-enable-roam-support t
          org-enable-roam-server t
          org-enable-roam-protocol t
          )
     ruby-on-rails
     (ruby :variables
           ruby-backend 'lsp
           ruby-version-manager 'rbenv
           )
     (ranger :variables
             ranger-show-preview t
             ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
             ranger-show-literal nil
             ranger-width-preview 0.5
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-shell 'vterm
            )
     spell-checking
     syntax-checking
     version-control
     elasticsearch
     search-engine
     (osx :variables osx-command-as       'super
          osx-option-as        'meta
          osx-control-as       'control
          osx-function-as      nil
          osx-right-command-as 'left
          osx-right-option-as  'left
          osx-right-control-as 'left
          osx-swap-option-and-command nil)
     treemacs
     slack
     (mu4e :variables
           mu4e-enable-notifications t
           mu4e-enable-mode-line t
           mu4e-mu-binary "/usr/local/bin/mu"
           ;; mu4e-enable-async-operations t
           )
     )


   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(
                                      atomic-chrome
                                      dracula-theme
                                      calfw-org
                                      org-msg
                                      mu4e-conversation
                                      selectric-mode
                                      quickrun
                                      flutter
                                      latex-preview-pane
                                      (wat-mode :location (recipe
                                                           :fetcher github
                                                           :repo "devonsparks/wat-mode"
                                                           ))
                                      ob-cypher
                                      format-all
                                      clomacs
                                      org-tree-slide
                                      ob-ipython
                                      ob-nim
                                      helm-org-ql
                                      inf-mongo
                                      graphql-mode
                                      company-tabnine
                                      pdf-tools
                                      vscode-dark-plus-theme
                                      org-bullets
                                      ;; (gitattributes-mode :location
                                      ;;                     (recipe
                                      ;;                      :fetcher github
                                      ;;                      :repo "magit/git-modes"))

                                      ;; (gitconfig-mode :location (recipe
                                      ;;                                :fetcher github
                                      ;;                                :repo "magit/git-modes"
                                      ;;                                ))
                                      ;; (gitignore-mode :location (recipe
                                      ;;                            :fetcher github
                                      ;;                            :repo "magit/git-modes"
                                      ;;                            ))
                                      (evil-iedit-state :location (recipe
                                                                   :fetcher github
                                                                   :repo "lesliebinbin/evil-iedit-state"
                                                                   ))
                                      (evil-org-mode :location (recipe
                                                                :fetcher github
                                                                :repo "lesliebinbin/evil-org-mode"
                                                                ))
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
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
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

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 100

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 6)
                                (projects . 12))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         vscode-dark-plus
                         spacemacs-dark
                         monokai
                         monochrome
                         material
                         dracula
                         twilight
                         afternoon
                         zen-and-art
                         wheatgrass
                         spacemacs-light
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(vim-powerline :separator wave :separator-scale 1)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '(
                               "Lucida Console"
                               :size 18.0
                               :weight normal
                               :width normal
                               )

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
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t

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
   dotspacemacs-large-file-size 30

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
   ;; dotspacemacs-inactive-transparency 50

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

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling t

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

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

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
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Show trailing whitespace (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfer with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile t))

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
  ;; enable remote tramp
  (setq-default enable-remote-dir-locals t)
  (setq org-roam-v2-ack t
        org-roam-completion-everywhere t
        org-roam-capture-templates '(
                                     (
                                      "d" "default" plain
                                      "%?"
                                      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date: %U\n")
                                      :unnarrowed t
                                      )
                                     (
                                      "l" "programming language" plain
                                      "* Characteristics:\n\n- Family: %?\n- Inspired by: \n\n* Reference:\n\n"
                                      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
                                      :unnarrowed t
                                      )
                                     ("b" "book notes" plain
                                      "\n* Source\n\nAuthor: %^{Author}\nTitle: ${title}\nYear: %^{Year}\n\n* Summary\n\n%?"
                                      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
                                      :unnarrowed t
                                      )
                                     ("p" "project" plain
                                      "* Goals\n\n%?\n\n* Tasks\n\n** TODO Add initial tasks\n\n*Dates\n\n"
                                      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+filetags:Project")
                                      :unnarrowed t
                                      )
                                     )
        org-roam-dailies-capture-templates '(
                                             (
                                              "d" "default" entry
                                              "* %<%I:%M %p>: %?"
                                              :if-new (file+head "%<%Y-%m-%d>.org" "#+title: %<%Y-%m-%d>\n")
                                              )
                                             )
        ;; optimise local variable evaluate and babel
        enable-local-variables :all
        ;; remote zsh related
        shell-prompt-pattern '"^[^#$%>\n]*~?[#$%>] *"
        )
  ;; refer to tabnine jupyter: https://www.tabnine.com/install/jupyter
  ;; add path to custom-modes
  (add-to-list 'load-path (substitute-in-file-name "$HOME/.spacemacs.d/custom-modes")  t)

  )


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump.")


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (setq treemacs-width 30
        projectile-rails-vanilla-command "bin/rails"
        projectile-rails-spring-command "bin/spring"
        projectile-rails-zeus-command "bin/zeus"
        terminal-here-mac-terminal-command 'iterm2
        pdf-view-use-imagemagick t
        )
  (setq-default enable-remote-dir-locals t)
  ;; custom shortcut
(defun reset-the-cmake-flag ()
  "reset the cmake ide flag"
  (interactive)
  (setq cmake-sentinel-flag nil))

(defun pretty-the-nim ()
  "format nim file"
  (interactive)
  (shell-command (format "nimpretty %s" (buffer-file-name)))
  )


(spacemacs/declare-prefix "o" "custom" "Leslie Binbin")
;; config for toggle company mode
(spacemacs/declare-prefix "oR" "reset" "Reset")
(spacemacs/set-leader-keys "oRc" 'reset-the-cmake-flag)
(spacemacs/declare-prefix "of" "format" "Format")
(spacemacs/set-leader-keys "ofr" 'rubocopfmt)
(spacemacs/set-leader-keys "ofn" 'pretty-the-nim)
(spacemacs/declare-prefix "oc" "completion" "Completions")
(spacemacs/set-leader-keys "occ" 'completion-at-point)
(spacemacs/set-leader-keys "oct" 'company-tabnine)
(spacemacs/declare-prefix "or" "roam" "Org Roam")
(spacemacs/set-leader-keys "ori" 'org-id-get-create)
(spacemacs/declare-prefix "ord" "daily" "Dailies Capture")
(spacemacs/set-leader-keys "ordt" 'org-roam-dailies-capture-today)
(spacemacs/set-leader-keys "ordy" 'org-roam-dailies-capture-yesterday)
(spacemacs/set-leader-keys "ordT" 'org-roam-dailies-capture-tomorrow)
(spacemacs/set-leader-keys "ordd" 'org-roam-dailies-capture-date)
(spacemacs/set-leader-keys "ordn" 'org-roam-dailies-goto-next-note)
(spacemacs/set-leader-keys "ordp" 'org-roam-dailies-goto-previous-note)
  ;; slack configuration
  (slack-register-team
   :name (getenv "SLACK_NAME")
   :default t
   :client-id (getenv "SLACK_CLIENT_ID")
   :client-secret (getenv "SLACK_CLIENT_SECRET")
   :token (getenv "SLACK_TOKEN")
   :subscribed-channels (->> "SLACK_CHANNELS"
                            (getenv)
                            (s-split ",")
                            )
  )
  ;; org-mode
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((gnuplot . t)
     (ruby . t)
     (lisp . t)
     (clojure . t)
     (awk . t)
     (restclient . t)
     (shell . t)
     (dot . t)
     (ipython . t)
     (ein . t)
     (python . t)
     (cypher . t)
     (nim . t)
     (js . t)
     ))
  (setq org-agenda-files '("~/.spacemacs.d/calendars/leslie.org" "~/.spacemacs.d/calendars/Birthdays.org"))
  (require 'org-bullets)
  (add-hook 'org-mode-hook (lambda ()
                             (org-indent-mode)
                             (variable-pitch-mode 1)
                             (visual-line-mode 1)
                             (org-bullets-mode 1)
                             (setq visual-fill-column-width 100
                                   visual-fill-column-center-text t)
                             (visual-fill-column-mode 1)))
;; Make org mode to latex auto break line
      (setq org-latex-listings 'minted
            org-latex-packages-alist
            '(("" "minted"))
            org-latex-pdf-process
            '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
              "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
              "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
      (setq org-latex-minted-options '(("breaklines" "true")
                                       ("breakanywhere" "true")))

;; modify org-files-app
(setq org-file-apps
      '(
        (auto-mode . emacs)
        ("\\.x?html?\\'" . system)
        ("\\.pdf\\'" . emacs)
        )
      )

(setq pdf-view-use-imagemagick t)

(setq  org-tree-slide-slide-in-effect t
       org-tree-slide-activate-message "Presentation Start"
       org-tree-slide-deactivate-message "Thank You"
       org-tree-slide-header t
       org-tree-slide-breadcrumbs " // "
       org-image-actual-width nil
       org-todo-keywords '(
                           (sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!)")
                           (sequence "BACKLOG(b)" "PLAN(p)" "READY(r)" "ACTIVE(a)" "REVIEW(r)" "WAIT(w@/!)" "HOLD(h)" "|" "COMPLETED(c)" "CANC(k@)")
                           )
       )

(defun efs/presentation-end ()
  (text-scale-mode 0))


(defun efs/presentation-setup ()
  (setq text-scale-mode-amount 3)
  (org-display-inline-images)
  (text-scale-mode 1)
  )

(add-hook 'org-tree-slide-play 'efs/presentation-setup)
(add-hook 'org-tree-slide-stop 'efs/presentation-end)
;; pdf configuration
;; (add-hook 'pdf-view-mode-hook 'pdf-continuous-scroll-mode)
(require 'pdf-tools)
(pdf-tools-install)
  ;; configure alert notification for slack
(require 'alert)
(setq alert-default-style 'osx-notifier)
;;mu4e
(require 'mu4e)
(with-eval-after-load 'mu4e (require 'mu4e-conversation))
(setq
      mail-user-agent 'mu4e-user-agent
      mu4e-maildir "~/.mail"
      mu4e-update-interval 240
      mu4e-view-show-images t
      mu4e-view-show-addresses t
      org-mu4e-convert-to-html t)
(setq mu4e-contexts
      `(
        ;; WORK EMAIL
        ,(make-mu4e-context
          :name "Gmail"
          :enter-func (lambda () (mu4e-message "Switch to the Work Email Context"))
          ;; leave-func not defined
          :match-func (lambda (msg)
                        (when msg
                          (mu4e-message-contact-field-matches msg
                                                              :to (getenv "WORK_EMAIL"))))
          :vars '(  ( user-mail-address      . (getenv "WORK_EMAIL"))
                    ( user-full-name     . "Leslie Wong" )
                    (mu4e-get-mail-command . "offlineimap -a WORK_EMAIL")
                    (mu4e-sent-messages-behavior . delete)
                    ;; (mu4e-sent-folder . "/lesliebinbin19900129@gmail.com/[Gmail].Sent Mail")
                    (mu4e-sent-folder . (format "/%s/[Work].Sent Mail" (getenv "WORK_EMAIL")))
                    ;; (mu4e-drafts-folder . "/lesliebinbin19900129@gmail.com/[Gmail].Drafts")
                    (mu4e-sent-folder . (format "/%s/[Work].Drafts" (getenv "WORK_EMAIL")))
                    ;; (mu4e-trash-folder . "/lesliebinbin19900129@gmail.com/[Gmail].Trash")
                    (mu4e-sent-folder . (format "/%s/[Work].Trash" (getenv "WORK_EMAIL")))
                    ;; (mu4e-retfile-folder . "/lesliebinbin19900129@gmail.com/[Gmail].All Mail")
                    (mu4e-sent-folder . (format "/%s/[Work].All Mail" (getenv "WORK_EMAIL")))
                    ;; (user-mail-address . "lesliebinbin19900129@gmail.com")
                    (user-mail-address . (getenv "WORK_EMAIL"))
                    (smtpmail-stream-type . ssl)
                    (smtpmail-default-smtp-server . (getenv "WORK_SMTP"))
                    (smtpmail-smtp-server . (getenv "WORK_SMTP"))
                    (smtpmail-smtp-service . 465)
                    ;; (smtpmail-smtp-user . "lesliebinbin19900129@gmail.com")
                    (smtpmail-smtp-user . (getenv "WORK_EMAIL"))
                    (smtpmail-debug-verb . t)
                    (send-mail-function . smtpmail-send-it)
                    ))
        ;; WORK EMAIL
        ;; UNI EMAIL
        ,(make-mu4e-context
          :name "UQ"
          :enter-func (lambda () (mu4e-message "Switch to the Uni Email context"))
          ;; leave-func not defined
          :match-func (lambda (msg)
                        (when msg
                          (mu4e-message-contact-field-matches msg
                                                              :to (getenv "UNI_EMAIL"))))
          :vars '(  ( user-mail-address      . (getenv "UNI_EMAIL"))
                    ( user-full-name     . "Zhibin Huang" )
                    (mu4e-get-mail-command . "offlineimap -a UNI_EMAIL")
                    (mu4e-sent-messages-behavior . delete)
                    (mu4e-sent-folder . (format "/%s/[Uni].Sent Mail" (getenv "UNI_EMAIL")))
                    (mu4e-sent-folder . (format "/%s/[Uni].Drafts" (getenv "UNI_EMAIL")))
                    (mu4e-sent-folder . (format "/%s/[Uni].Trash" (getenv "UNI_EMAIL")))
                    (mu4e-sent-folder . (format "/%s/[Uni].All Mail" (getenv "UNI_EMAIL")))
                    (user-mail-address . (getenv "UNI_EMAIL"))
                    (smtpmail-default-smtp-server . (getenv "UNI_SMTP"))
                    (smtpmail-smtp-server . (getenv "UNI_SMTP"))
                    (smtpmail-stream-type . starttls)
                    (smtpmail-smtp-service . 587)
                    (smtpmail-smtp-user . (getenv "UNI_EMAIL"))
                    (smtpmail-debug-verb . t)
                    (send-mail-function . smtpmail-send-it)
                    ))
        ;; UNI EMAIL

        ))


(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

(with-eval-after-load 'mu4e-alert
  (mu4e-alert-set-default-style 'notifications))
;;mu4e
;; configure emmet
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
;; configure remote tramp
(setq-default enable-remote-dir-locals t)
(setq shell-prompt-pattern '"^[^#$%>\n]*~?[#$%>] *")
;; configure org-msg
(require 'org-msg)
(setq org-msg-options "html-postamble:nil H:5 num:nil ^:{} toc:nil"
      org-msg-startup "hidestars indent inlineimages"
      org-msg-greeting-fmt "\nHi *%s*,\n\n"
      org-msg-greeting-name-limit 3
      org-msg-signature "

Best Regards,

#+begin_signature
-- *Leslie Wong* \\\\
/One Emacs to rule them all/
#+end_signature")
(org-msg-mode)
;; configure Dap
(require 'dap-ruby)
;; enable local variable evaluate
(setq enable-local-variables :all)
;; enable transparency
(spacemacs/enable-transparency)
(add-hook 'rust-mode-hook (lambda ()
                            (require 'dap-lldb)
                            (require 'dap-gdb-lldb)
                            (dap-gdb-lldb-setup)
                            (dap-register-debug-template
                             "Rust::LLDB Run Configuration"
                             (list :type "lldb"
                                   :request "launch"
                                   :name "LLDB::Run"
	                                 :gdbpath "rust-lldb"
                                   :target nil
                                   :cwd nil))
                            ))
;; webassembly
(require 'wat-mode)
;; org-roam-node
(require 'org-roam-node)
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
 '(doc-view-continuous t)
 '(ein:output-area-inlined-images t)
 '(evil-want-Y-yank-to-eol nil)
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(package-selected-packages
   '(doom-modeline shrink-path typescript-mode csv-mode restclient-helm ob-restclient ob-http company-restclient restclient know-your-http-well yaml-mode yasnippet-snippets ws-butler writeroom-mode winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package undo-tree treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil toc-org tagedit symon symbol-overlay string-inflection string-edit spaceline-all-the-icons smeargle slim-mode seeing-is-believing scss-mode sass-mode rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe restart-emacs rbenv rainbow-delimiters quickrun pug-mode projectile-rails prettier-js popwin password-generator paradox overseer orgit-forge org-superstar org-rich-yank org-projectile org-present org-pomodoro org-mime org-download org-cliplink org-brain open-junk-file npm-mode nodejs-repl nameless multi-line mmm-mode minitest markdown-toc magit-section macrostep lsp-ui lsp-origami lorem-ipsum livid-mode link-hint json-navigator js2-refactor js-doc indent-guide impatient-mode hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-lsp helm-ls-git helm-gitignore helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag grip-mode google-translate golden-ratio gnuplot gitignore-templates github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ gist gh-md fuzzy font-lock+ flyspell-correct-helm flycheck-pos-tip flycheck-package flycheck-elsa flx-ido feature-mode fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu es-mode enh-ruby-mode emr emmet-mode elisp-slime-nav editorconfig dumb-jump drag-stuff dotenv-mode dockerfile-mode docker dired-quick-sort diminish devdocs define-word dap-mode company-web column-enforce-mode clean-aindent-mode chruby centered-cursor-mode bundler browse-at-remote auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent add-node-modules-path ace-link ace-jump-helm-line ac-ispell))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)

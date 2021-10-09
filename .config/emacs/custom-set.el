
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "dark red" "#ab9df2" "#a1efe4" "#fcfcfa"])
 '(auth-source-gpg-encrypt-to '("EA297DFC1EDBBA32252CDD12EF97796A7E0BB77D"))
 '(auth-source-save-behavior nil)
 '(auth-sources '("~/.config/authinfo.gpg"))
 '(auto-revert-check-vc-info t)
 '(beacon-blink-duration 2)
 '(blink-cursor-mode t)
 '(ccls-args nil)
 '(clang-format+-always-enable t)
 '(clang-format+-context 'buffer)
 '(clang-format-executable "clang-format")
 '(clang-format-style "Google")
 '(company-meghanada-insert-args t)
 '(company-meghanada-prefix-length 2)
 '(company-show-quick-access t nil nil "Customized with use-package company")
 '(custom-safe-themes
   '("835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "a325ba05dc3b5c2fa89af0ff354bbbe90251fb1a6e6d5682977cebe61ce72ab7" default))
 '(default-input-method "TeX")
 '(display-line-numbers 'relative)
 '(display-line-numbers-type 'relative)
 '(dynamic-completion-mode t)
 '(elpy-rpc-python-command "python3")
 '(enable-recursive-minibuffers t)
 '(fa-delay 1)
 '(fa-do-comments 'non-nil)
 '(fa-hint-position-below t)
 '(flycheck-checkers
   '(ada-gnat asciidoctor asciidoc awk-gawk bazel-buildifier c/c++-gcc c/c++-cppcheck cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint css-stylelint cuda-nvcc cwl d-dmd dockerfile-hadolint elixir-credo emacs-lisp emacs-lisp-checkdoc ember-template erlang-rebar3 erlang eruby-erubis eruby-ruumba fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck go-unconvert go-staticcheck groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy javascript-eslint javascript-jshint javascript-standard json-jsonlint json-python-json json-jq jsonnet less less-stylelint llvm-llc lua-luacheck lua markdown-markdownlint-cli markdown-mdl nix nix-linter opam perl perl-perlcritic php php-phpmd php-phpcs processing proselint protobuf-protoc protobuf-prototool pug puppet-parser puppet-lint python-flake8 python-pylint python-pycompile python-mypy r-lintr racket rpm-rpmlint rst-sphinx rst ruby-rubocop ruby-standard ruby-reek ruby-rubylint ruby ruby-jruby rust-cargo rust rust-clippy scala scala-scalastyle scheme-chicken scss-lint scss-stylelint sass/scss-sass-lint sass scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim slim-lint sql-sqlint systemd-analyze tcl-nagelfar terraform terraform-tflint tex-chktex tex-lacheck texinfo textlint typescript-tslint verilog-verilator vhdl-ghdl xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby yaml-yamllint))
 '(flycheck-clang-args '("-std=c++2a"))
 '(flycheck-clang-blocks t)
 '(flycheck-clang-include-path '("/usr/include/c++/10" "/usr/include/clang/10/include/"))
 '(flycheck-clang-language-standard "2a")
 '(flycheck-gcc-args '("-std=c++2a"))
 '(flycheck-gcc-include-path '("/usr/local/include" "/usr/include/c++"))
 '(flycheck-gcc-language-standard "\"c++2a\"")
 '(flycheck-gcc-pedantic t)
 '(flycheck-gcc-pedantic-errors t)
 '(flycheck-global-modes t)
 '(flycheck-highlighting-mode 'sexps)
 '(fringe-mode 0 nil (fringe))
 '(gdb-enable-debug t)
 '(gdb-many-windows nil)
 '(gdb-stopped-functions nil)
 '(global-auto-complete-mode nil)
 '(global-display-line-numbers-mode t)
 '(global-linum-mode nil)
 '(golden-ratio-mode t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(helm-completion-style 'emacs)
 '(helm-file-preview-mode nil nil (helm-file-preview))
 '(helm-file-preview-only-when-line-numbers nil)
 '(helm-mode t)
 '(helm-scroll-amount 8)
 '(ibuffer-always-show-predicates nil)
 '(inhibit-startup-screen t)
 '(ivy-mode t)
 '(line-number-mode nil)
 '(lsp-clients-clangd-args '("-std=c++2a"))
 '(lsp-clients-clangd-executable "clangd-10")
 '(lsp-java-code-generation-generate-comments t)
 '(lsp-java-code-generation-hash-code-equals-use-instanceof t)
 '(lsp-java-code-generation-hash-code-equals-use-java7objects t)
 '(lsp-java-implementations-code-lens-enabled t)
 '(lsp-java-references-code-lens-enabled t)
 '(lsp-java-save-actions-organize-imports t)
 '(lsp-java-server-install-dir "~/.emacs.d/eclipse.jdt.ls/")
 '(lsp-java-show-build-status-on-start-enabled t)
 '(lsp-java-sources-organize-imports-star-threshold 3)
 '(lsp-java-sources-organize-imports-static-star-threshold 3)
 '(lsp-restart 'auto-restart)
 '(lsp-rust-all-features t)
 '(lsp-rust-analyzer-cargo-watch-enable t)
 '(lsp-rust-analyzer-display-chaining-hints t)
 '(lsp-rust-analyzer-display-parameter-hints t)
 '(lsp-rust-analyzer-macro-expansion-method 'rustic-analyzer-macro-expand)
 '(lsp-rust-features [])
 '(lsp-rust-wait-to-build 1)
 '(lsp-ui-doc-delay 5.0)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-position 'top)
 '(lsp-ui-flycheck-list-position 'right)
 '(lsp-ui-peek-fontify 'always)
 '(lsp-ui-peek-list-width 60)
 '(lsp-ui-peek-peek-height 25)
 '(lsp-ui-sideline-enable t)
 '(lsp-ui-sideline-show-symbol nil)
 '(moo-select-method 'helm)
 '(org-export-backends '(ascii html icalendar latex md odt org))
 '(org-fontify-whole-heading-line t)
 '(org-format-latex-options
   '(:foreground default :background default :scale 2.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-hide-leading-stars t)
 '(org-highlight-latex-and-related '(latex script entities))
 '(org-journal-dir "~/MyFiles/Nikhil/journal")
 '(org-journal-enable-encryption t)
 '(org-journal-encrypt-journal t)
 '(org-journal-encrypt-on 'before-save-hook)
 '(org-pretty-entities t)
 '(org-return-follows-link t)
 '(org-src-fontify-natively t)
 '(org-todo-keywords '((sequence "TODO" "DONE")))
 '(package-selected-packages
   '(markdownfmt treemacs-magit haskell-emacs-base dockerfile-mode docker-compose-mode docker protobuf-mode mu4e-alert mu4e-column-faces mu4e-conversation mu4e-jump-to-list mu4e-maildirs-extension mu4e-marker-icons mu4e-overview mu4e-query-fragments mu4e-views yaml-mode ranger powerline ghci-completion company-ghci flycheck-haskell haskell-tab-indent haskell-snippets lsp-haskell haskell-emacs haskell-mode lsp-mode highlight inline-crypt cryptol-mode erc-crypt autocrypt pg doom-themes org-journal-list org-journal flycheck-aspell helm-flyspell ac-ispell helm-ispell unicode-fonts darkroom olivetti ace-jump-buffer ace-jump-zap ace-jump-mode ## sass-mode undo-tree auctex-lua company-auctex simple-httpd js2-mode skewer-mode d-mode company-lua lua-mode color-theme iedit aggressive-indent electric-operator crux zenburn-theme srefactor ll-debug company-capf cmake-ide cmake-mode meghanada bash-completion gotham-theme calmer-forest-theme forest-blue-theme color-theme-sanityinc-solarized solarized-theme gruvbox-theme sublime-themes org-super-agenda org-fragtog flycheck-clang-tidy makey make-it-so clang-format+ clang-format glsl-mode makefile-executor image+ helm-make org-outline-numbering git-link groovy-mode flycheck-gradle gradle-mode toml toml-mode cargo flycheck-rust lsp-origami origami flycheck-irony multiple-cursors beacon expand-region flycheck helm helm-fish-completion fish-mode lsp-intellij golden-ratio nyan-mode web-mode eshell-git-prompt fish-completion exec-path-from-shell hydra company-irony git-gutter+ git-gutter idle-highlight-mode lsp-java lsp-ccls magit helm-lsp projectile flyspell-correct dap-java fireplace lsp-ui ccls xwidgete orgalist latex-pretty-symbols company-emoji auto-complete virtualenvwrapper elpy try ox-reveal zeno misc golden-ratio-mode auto-complete-config helm-config org-mode php-mode go-mode rustic rust-mode which-key htmlize windswap markdown-mode+ markdown-preview-mode info-beamer org-edit-latex org-bullets helm-c-yasnippet engine-mode multi-term mandm-theme use-package dired-rainbow leetcode zeno-theme sexy-monochrome-theme reverse-theme minimal-theme github-modern-theme helm-file-preview yasnippet-snippets company-c-headers sr-speedbar imenus helm-gtags function-args ggtags floobits sudo-edit modern-cpp-font-lock dummyparens smartparens duplicate-thing yasnippet company monokai-pro-theme))
 '(rust-format-on-save nil)
 '(rustic-lsp-format t)
 '(scroll-bar-mode nil)
 '(semantic-default-c-path '("/usr/include/"))
 '(semantic-mode t)
 '(send-mail-function 'mailclient-send-it)
 '(show-paren-mode t)
 '(tooltip-frame-parameters
   '((name . "tooltip")
     (internal-border-width . 2)
     (border-width . 1)
     (no-special-glyphs . t)
     (alpha . 10)))
 '(tooltip-mode nil)
 '(web-mode-auto-close-style 2)
 '(web-mode-enable-auto-expanding t)
 '(web-mode-enable-block-face nil)
 '(web-mode-enable-comment-interpolation t)
 '(web-mode-enable-current-column-highlight nil)
 '(web-mode-enable-current-element-highlight t)
 '(web-mode-enable-element-content-fontification nil)
 '(web-mode-enable-element-tag-fontification nil)
 '(web-mode-enable-engine-detection t)
 '(web-mode-enable-html-entities-fontification nil)
 '(web-mode-enable-inlays t)
 '(web-mode-enable-optional-tags nil)
 '(web-mode-enable-sql-detection t)
 '(web-mode-enable-whitespace-fontification nil)
 '(zeno-theme-enable-italics t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(flycheck-warning ((t (:underline (:color "yellow" :style wave)))))
 '(hl-line ((t (:extend t :background "#343850" :underline nil))))
 '(lsp-ui-doc-background ((t (:background nil))))
 '(lsp-ui-doc-header ((t (:inherit (font-lock-string-face italic))))))

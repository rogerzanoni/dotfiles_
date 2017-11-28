(require 'package)

(add-to-list 'load-path "~/.emacs.d/settings")

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(setq package-list '(ace-jump-mode
                     ansible
                     company
                     company-c-headers
                     company-irony
                     company-qml
                     company-quickhelp
                     counsel
                     cmake-mode
                     cyberpunk-theme
                     dtrt-indent
                     editorconfig
                     elpy
                     evil
                     evil-leader
                     evil-nerd-commenter
                     flycheck
                     flycheck-pos-tip
                     ggtags
                     git-gutter-fringe+
                     helm
                     helm-ag
                     helm-dash
                     helm-gtags
                     helm-ls-git
                     helm-projectile
                     hl-todo
                     irony
                     js2-mode
                     lua-mode
                     magit
                     moe-theme
                     ng2-mode
                     paren
                     projectile
                     pkgbuild-mode
                     qml-mode
                     perspeen
                     rainbow-delimiters
                     rainbow-identifiers
                     smart-mode-line
                     smartscan
                     smart-tab
                     smooth-scrolling
                     typescript-mode
                     use-package
                     web-mode
                     which-key
                     whitespace
                     yaml-mode
                     zygospore))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'use-package)

(require 'ansible-settings)
(require 'ace-jump-mode-settings)
(require 'appearance-settings)
(require 'c-settings)
(require 'cedet-settings)
(require 'company-settings)
(require 'company-qml-settings)
(require 'company-quickhelp-settings)
(require 'cmake-settings)
(require 'dtrt-indent-settings)
(require 'editor-settings)
(require 'editorconfig-settings)
(require 'elpy-settings)
(require 'evil-settings)
(require 'evil-nerd-commenter-settings)
(require 'flycheck-settings)
(require 'gdb-settings)
(require 'ggtags-settings)
(require 'git-gutter-fringe+-settings)
(require 'helm-settings)
(require 'helm-dash-settings)
(require 'helm-gtags-settings)
(require 'helm-projectile-settings)
(require 'hl-todo-settings)
(require 'irony-settings)
(require 'js2-mode-settings)
(require 'key-settings)
(require 'lua-mode-settings)
(require 'ng2-mode-settings)
(require 'paren-settings)
(require 'pkgbuild-mode-settings)
(require 'projectile-settings)
(require 'qml-mode-settings)
(require 'perspeen-settings)
(require 'rainbow-delimiters-settings)
(require 'rainbow-identifiers-settings)
(require 'smart-mode-line-settings)
(require 'smartscan-settings)
(require 'smart-tab-settings)
(require 'smooth-scrolling-settings)
(require 'web-mode-settings)
(require 'whitespace-settings)
(require 'which-key-settings)
(require 'yaml-mode-settings)
(require 'zygospore-settings)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

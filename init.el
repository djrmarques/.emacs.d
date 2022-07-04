(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package) (package-refresh-contents) (package-install 'use-package))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(setq org-config-file "~/.emacs.d/config.org")
(org-babel-load-file (expand-file-name org-config-file))

(setq ring-bell-function 'ignore)

(global-prettify-symbols-mode t) 

(tool-bar-mode -1)
(menu-bar-mode -1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-mode rust-mode zenburn-theme which-key use-package undo-tree telephone-line smartparens sly rainbow-delimiters projectile magit jupyter hydra flycheck evil elpy dashboard counsel company-jedi beacon auctex amx)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

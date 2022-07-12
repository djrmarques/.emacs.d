(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package) (package-refresh-contents) (package-install 'use-package))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq org-config-file "~/.emacs.d/config.org")
(org-babel-load-file (expand-file-name org-config-file))


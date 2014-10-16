;;; init.el

(setq dotemacs-dir user-emacs-directory)
(setq dotemacs-init-dir (expand-file-name "init" dotemacs-dir))
(setq dotemacs-cache-dir (expand-file-name ".cache" dotemacs-dir))
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq make-backup-files nil) 

(add-to-list 'load-path dotemacs-init-dir)

(require 'init-loadup)
(require 'init-packages)

(require 'init-eshell)
(require 'init-exec-path-from-shell)
(require 'init-fonts)
(require 'init-git)
(require 'init-helm)
(require 'init-hl-line)
(require 'init-linum)
(require 'init-neotree)
(require 'init-projectile)
(require 'init-recentf)
(require 'init-savehist)
(require 'init-saveplace)
(require 'init-smartparens)
(require 'init-themes)
(require 'init-whitespace)
(require 'init-windmove)
(require 'init-yasnippet)
(require 'init-clojure-mode)
(require 'init-rspec-mode)

(setq custom-file (expand-file-name "custom.el" dotemacs-dir))
(when (file-exists-p custom-file)
  (load custom-file))

;;; init.el ends here

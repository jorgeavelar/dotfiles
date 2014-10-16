;;; init-projectile.el

 (require 'grizzl)

(require-package 'projectile)
(use-package projectile
  :config
  (progn
    (setq projectile-cache-file (expand-file-name "projectile.cache" dotemacs-cache-dir))
    (setq projectile-known-projects-file (expand-file-name "projectile-bookmarks.eld" dotemacs-cache-dir))
    (setq projectile-completion-system 'grizzl)
    (add-hook 'ruby-mode-hook 'projectile-mode)
    (add-to-list 'projectile-globally-ignored-directories "elpa")
    (add-to-list 'projectile-globally-ignored-directories ".cache"))
  :init (projectile-global-mode))

 ;; Press Command-p for fuzzy find in project
 (global-set-key (kbd "s-p") 'projectile-find-file)
 ;; Press Command-b for fuzzy switch buffer
 (global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(provide 'init-projectile)

;;; init-projectile.el ends here

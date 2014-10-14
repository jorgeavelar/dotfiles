;;; init-projectile.el

(require-package 'projectile)
(use-package projectile
  :config
  (progn
    (setq projectile-cache-file (expand-file-name "projectile.cache" dotemacs-cache-dir))
    (setq projectile-known-projects-file (expand-file-name "projectile-bookmarks.eld" dotemacs-cache-dir))
    (add-to-list 'projectile-globally-ignored-directories "elpa")
    (add-to-list 'projectile-globally-ignored-directories ".cache"))
  :init (projectile-global-mode))

(provide 'init-projectile)

;;; init-projectile.el ends here

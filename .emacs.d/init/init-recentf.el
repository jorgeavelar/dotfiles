;;; init-recentf.el

(use-package recentf
  :config
  (progn
    (setq recentf-save-file (expand-file-name "recentf" dotemacs-cache-dir)
          recentf-max-saved-items 200
          recentf-max-menu-items 15)
    (recentf-mode +1)))

(provide 'init-recentf)

;;; init-recentf.el ends here

;;; init-savehist.el

(use-package savehist
  :config
  (progn
    (setq savehist-additional-variables '(search ring regexp-search-ring)
          savehist-autosave-interval 60
          savehist-file (expand-file-name "savehist" dotemacs-cache-dir))
    (savehist-mode +1)))

(provide 'init-savehist)

;;; init-savehist.el ends here

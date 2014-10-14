;;; init-whitespace.el

(use-package whitespace
  :config
  (progn
    (setq whitespace-style '(face tabs empty trailing lines-tail)
          whitespace-line-column 80)
    (add-to-list 'safe-local-variable-values '(whitespace-line-column . 80))
    (add-hook 'prog-mode-hook 'whitespace-mode)))

(provide 'init-whitespace)

;;; init-whitespace.el ends here

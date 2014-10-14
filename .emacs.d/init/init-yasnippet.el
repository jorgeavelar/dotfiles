;;; init-yasnippet.el

(require-package 'yasnippet)
(use-package yasnippet
  :config
  (progn
    (yas-reload-all)
    (add-hook 'prog-mode-hook 'yas-minor-mode)))

(provide 'init-yasnippet)

;;; init-yasnippet.el ends here

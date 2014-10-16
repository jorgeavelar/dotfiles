;;; init-term.el

(require-package 'multi-term)
(use-package multi-term
  :ensure multi-term
  ;; :bind (("C-c m" . multi-term-next)
  ;;        ("C-c M" . multi-term))
  :init (setq multi-term-program "/usr/local/bin/zsh"))

(provide 'init-term)

;;; init-term.el ends here

;;; init-eshell.el

(use-package eshell
  :init
  (defun eshell-new ()
    (interactive)
    (eshell t))
  :bind (("C-c m" . eshell)
         ("C-c M" . eshell-new))
  :config
  (progn
    (setq eshell-directory-name (expand-file-name "eshell" dotemacs-cache-dir))
    (setq eshell-aliases-file (expand-file-name ".eshell-aliases" dotemacs-dir))))

(provide 'init-eshell)

;;; init-eshell.el ends here

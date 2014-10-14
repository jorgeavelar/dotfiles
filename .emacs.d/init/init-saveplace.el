;;; init-saveplace.el

(use-package saveplace
  :config
  (progn
    (setq save-place-file (expand-file-name "saveplace" dotemacs-cache-dir))
    (setq-default save-place t)))

(provide 'init-saveplace)

;;; init-saveplace.el ends here

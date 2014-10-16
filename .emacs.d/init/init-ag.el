;;; init-ag.el

(require-package 'ag)
(use-package ag
  :commands (ag ag-project)
  :config
  (setq ag-highlight-search t))

(provide 'init-ag)

;;; init-ag.el ends here

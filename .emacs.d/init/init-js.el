;;; init-js.el

(require-package 'js2-mode)
(use-package js2-mode
  :mode (("\\.js$" . js2-mode)
         ("\\.json$" . js2-mode))
  :config
  (progn
    (setq js-indent-level 2
          js2-indent-level 2
          js2-basic-offset 2)))

(provide 'init-js)

;;; init-js.el ends here

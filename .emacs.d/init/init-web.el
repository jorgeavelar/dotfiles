;;; init-web.el

(require-package 'web-mode)
(use-package web-mode
  :mode (("\\.as[cp]x\\'" . web-mode)
         ("\\.erb\\'" . web-mode)
         ("\\.html?\\'" . web-mode)))

(provide 'init-web)

;;; init-web.el ends here

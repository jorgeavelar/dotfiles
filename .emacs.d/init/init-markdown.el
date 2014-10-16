;;; init-markdown.el

(require-package 'markdown-mode)
(use-package markdown-mode
  :mode (("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)))

(provide 'init-markdown)

;;; init-markdown.el ends here

;;; init-clojure-mode

(use-package clojure-mode
 :config
 (progn  
 	 (add-hook 'clojure-mode-hook 'subword-mode)
   (add-hook 'clojure-mode-hook 'paredit-mode)
   (add-hook 'clojure-mode-hook 'smartparens-strict-mode)
   (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)))

(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))

(provide 'init-clojure-mode)

;;; init-clojure-mode.el ends here

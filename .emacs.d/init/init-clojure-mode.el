;;; init-clojure-mode

(require 'clj-refactor)
(use-package clojure-mode
 :config
 (progn
   (add-hook 'clojure-mode-hook 'subword-mode)
   (add-hook 'clojure-mode-hook 'paredit-mode)
   (add-hook 'clojure-mode-hook 'smartparens-strict-mode)
   (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode))
   (add-hook 'clojure-mode-hook (lambda ()
                                  (clj-refactor-mode 1)
                                  (cljr-add-keybindings-with-prefix "C-c C-m")
                                  (cljr-add-keybindings-with-modifier "C-s-")
                                  (define-key clj-refactor-map (kbd "C-x C-r") 'cljr-rename-file))))

(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))

(require 'clojure-mode-extra-font-locking)

(provide 'init-clojure-mode)

;;; init-clojure-mode.el ends here

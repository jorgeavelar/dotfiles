;;; init-smartparens.el

(defun my-turn-on-smartparens ()
  "Turns on smartparens."
  (setq sp-highlight-pair-overlay nil)
  (smartparens-mode t)
  (show-smartparens-mode t))

(require-package 'smartparens)
(use-package smartparens
  :config
  (progn
    (require 'smartparens-config)
    (add-hook 'prog-mode-hook 'my-turn-on-smartparens)))

(provide 'init-smartparens)

;;; init-smartparens.el ends here

;;; init-linum.el

(defun my-turn-on-linum-mode ()
  "Turns on line numbers on the left side."
  (interactive)
  (setq linum-format "%4d ")
  (linum-mode +1))

(use-package linum
  :config
  (progn
    (add-hook 'prog-mode-hook 'my-turn-on-linum-mode)
    (add-hook 'text-mode-hook 'my-turn-on-linum-mode)))

(provide 'init-linum)

;;; init-linum.el ends here

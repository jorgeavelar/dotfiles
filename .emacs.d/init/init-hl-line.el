;;; init-hl-line.el

(defun my-turn-on-hl-line ()
  "Turns on line highlighting if there are enough colors."
  (when (> (display-color-cells) 8)
    (hl-line-mode +1)))

(use-package hl-line
  :config
  (progn
    (add-hook 'text-mode-hook 'my-turn-on-hl-line)
    (add-hook 'prog-mode-hook 'my-turn-on-hl-line)))

(provide 'init-hl-line)

;;; init-hl-line.el ends here

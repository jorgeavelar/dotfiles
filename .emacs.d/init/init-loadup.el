;;; init-loadup.el

;; set UTF-8 as the default character encoding.
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; allow short answers
(defalias 'yes-or-no-p 'y-or-n-p)

;; disable line wrap
(setq default-truncate-lines t)

;; make side by side buffers function the same as the main window
(setq truncate-partial-width-windows nil)

;; add F12 to toggle line wrap
(global-set-key [f9] 'toggle-truncate-lines)

(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region-or-line)

;; set frame title
(setq frame-title-format
      '(:eval (if (buffer-file-name)
                  (abbreviate-file-name (buffer-file-name))
                "%b")))

(provide 'init-loadup)

;;; init-loadup.el ends here

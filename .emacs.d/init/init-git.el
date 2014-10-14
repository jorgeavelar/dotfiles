;;; init-git.el

(provide 'init-git)

(require-package 'magit)
(use-package magit
  :bind ("C-c g" . magit-status))

(require-package 'git-timemachine)
(use-package git-timemachine
  :bind ("C-c G" . git-timemachine))

;;; init-git.el ends here

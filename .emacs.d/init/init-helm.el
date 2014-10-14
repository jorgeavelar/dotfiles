;;; init-helm.el

(require-package 'helm)
(use-package helm
  :init
  (progn
    (helm-mode t)
    (require 'helm-config))
  :bind (("C-c h" . helm-mini)
         ("M-x"   . helm-M-x)))

(require-package 'helm-ag)
(use-package helm-ag
  :config
  (progn
    (setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case"))
  :bind (("C-c a" . helm-ag)
         ("C-c f" . helm-ag-this-file)))

(require-package 'helm-projectile)
(use-package helm-projectile
  :init (helm-projectile-on))

(provide 'init-helm)

;;; init-helm.el ends here

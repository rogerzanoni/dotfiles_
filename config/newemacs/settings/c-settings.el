(use-package company-c-headers
  :config
  (add-to-list 'company-backends 'company-c-headers))

(add-hook 'c-mode-common-hook 'hs-minor-mode)

(use-package cc-mode
  :config
  (define-key c-mode-map  [(tab)] 'company-complete)
  (define-key c++-mode-map  [(tab)] 'company-complete))

(defun c-kr-style ()
  "C mode"
  (interactive)
  (c-set-style "K&R")
  (setq-default indent-tabs-mode t)
  (setq c-syntactic-indentation nil)
  (setq tab-width 4)
  (setq c-basic-offset 4))

(defun c-kernel-style ()
  "C kernel mode"
  (interactive)
  (c-set-style "linux")
  (setq-default indent-tabs-mode t)
  (setq c-syntactic-indentation nil)
  (setq tab-width 8)
  (setq c-basic-offset 8))

(defun cpp-style ()
  "Cpp mode"
  (interactive)
  (c-set-style "stroustrup")
  (setq-default indent-tabs-mode nil)
  (setq c-syntactic-indentation nil)
  (setq tab-width 4)
  (setq c-basic-offset 4))

(add-hook 'c++-mode-hook 'cpp-style)
(add-hook 'c-mode-hook 'c-kernel-style)

(provide 'c-settings)
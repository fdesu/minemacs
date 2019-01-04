;;; package --- Summary
;;; Commentary:
;;; packages configuration  file

;;; Code:

;;;;; Magit MELPA repo

(require 'package)

;;;;; Enable Powerline

(require 'powerline)
(powerline-default-theme)

;;;;; Nyan Mode customization

(require 'nyan-mode)
(nyan-mode 1)

;;;;; Configure Helm

(require 'helm-config)

(helm-mode 1)
;(helm-autoresize-mode t)

;(setq helm-buffers-fuzzy-matching t
;      helm-recentf-fuzzy-match    t)

(global-set-key (kbd "M-x") 'helm-M-x)

(setq
 helm-mode-fuzzy-match t
 helm-completion-in-region-fuzzy-match t
 helm-candidate-number-limit 100
 helm-M-x-fuzzy-match t
 )


(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
 helm-gtags-suggested-key-mapping t
 )

(require 'helm-gtags)
;; Enable helm-gtags-mode
;(add-hook 'dired-mode-hook 'helm-gtags-mode)
;(add-hook 'eshell-mode-hook 'helm-gtags-mode)
;(add-hook 'c-mode-hook 'helm-gtags-mode)
;(add-hook 'c++-mode-hook 'helm-gtags-mode)
;(add-hook 'asm-mode-hook 'helm-gtags-mode)
(add-hook 'prog-mode-hook 'helm-gtags-mode)

(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "M-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)

;;;;;; Company Mode config

(require 'company)

(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-rtags)
(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "<C-tab>") (function company-complete))

;;;;;;; Flycheck config

(require 'flycheck)
(add-hook 'prog-mode-hook 'flycheck-mode)

;;;;; RTags configure

;(require 'rtags)
;(require 'company)
;(require 'flycheck-rtags)

;(setq rtags-completions-enabled t)
;(setq rtags-display-result-backend 'helm)

;(global-set-key (kbd "M-.") 'rtags-find-symbol-at-point)
;(global-set-key (kbd "M-,") 'rtags-location-stack-back)

;(add-hook 'prog-mode-hook 'rtags-start-process-unless-running)
;(add-hook 'c++-mode-hook 'rtags-start-process-unless-running)
;(add-hook 'asm-mode-hook 'rtags-start-process-unless-running)

;;;;;;; Modern C++ font-locking

(require 'modern-cpp-font-lock)
(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

;;;;; Tabbar conifig

(require 'tabbar)
(tabbar-mode 1)
(global-set-key (kbd "C-M-<") 'tabbar-backward-tab)
(global-set-key (kbd "C-M->") 'tabbar-forward-tab)

;;;;; Winner config

(when (fboundp 'winner-mode)
  (winner-mode 1))

;;;;; Dashboard config

(require 'dashboard)
(dashboard-setup-startup-hook)

;;;;; Magit config

(require 'magit)
(global-set-key (kbd "M-s M-t") 'magit-status)

;;;;; Org Mode config

(require 'org)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; NEO TREE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; configure-custom-modules.el ends here

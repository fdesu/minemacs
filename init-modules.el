;;; package --- Summary
;;; Commentary:
;;; packages init file

;;; Code:

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
	     '( "gnu" . "https://elpa.gnu.org/packages/"))

; list the packages you want
(setq package-list
    '(python-environment deferred epc 
        flycheck ctable jedi concurrent company cyberpunk-theme elpy 
        yasnippet pyvenv highlight-indentation find-file-in-project 
        sql-indent sql exec-path-from-shell iedit
        auto-complete popup let-alist magit git-rebase-mode 
        git-commit-mode minimap popup))

(setq package-list
      '(auto-complete
	company company-c-headers company-quickhelp
	dashboard
	flycheck flycheck-rtags
	git-timemachine gitconfig-mode magit
	google-c-style
	helm helm-gtags helm-rtags
	markdown-mode
	meghanada
	neotree
	nyan-mode
	paradox
	pdf-tools
	powerline
	projectile
	tabbar
	)
      )


; activate all the packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;;; init-modules.el ends here

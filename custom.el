;;; package --- Summary
;;; Commentary:
;;; Init file

;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])

 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])

 '(custom-enabled-themes
   (quote (deeper-blue)))
 
 '(package-selected-packages
   (quote
    (modern-cpp-font-lock
     groovy-mode
     tabbar
     projectile
     powerline
     pdf-tools
     paradox
     nyan-mode
     neotree
     meghanada
     markdown-mode
     helm-rtags helm-gtags helm
     google-c-style
     magit gitconfig-mode git-timemachine
     flycheck-rtags flycheck
     dashboard company-quickhelp company-c-headers company
     auto-complete)))

 '(paradox-github-token t)) ;;; remove if github token needed

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; custom cursor color => light sea green
(set-cursor-color "#20b2aa")

;;; custom.el ends here

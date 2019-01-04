;;; package --- Summary
;;; Commentary:
;;; built-in config  file

;;; Code:

;;;;; built-in packages customizations

(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;(global-set-key (kbd "C-?") 'comment-region)

(electric-pair-mode t)
(show-paren-mode 1)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Windmove configuration ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key [s-left] 'windmove-left)
(global-set-key [s-right] 'windmove-right)
(global-set-key [s-up] 'windmove-up)
(global-set-key [s-down] 'windmove-down)

;;;;; Winner config

(when (fboundp 'winner-mode)
  (winner-mode 1))

;;; built-in-configuration.el ends here

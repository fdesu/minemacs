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
(linum-mode t)

;;; built-in-configuration.el ends here

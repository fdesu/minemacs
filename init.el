;;; package --- Summary
;;; Commentary:
;;; Init file

;;; Code:
(load-file (concat (file-name-directory load-file-name)
		   "init-modules.el"))

(load-file (concat (file-name-directory load-file-name)
		   "configure-custom-modules.el"))

(load-file (concat (file-name-directory load-file-name)
		   "built-in-configuration.el"))

(setq custom-file (concat (file-name-directory load-file-name)
		   "custom.el"))
(load custom-file)

;;; init.el ends here

;;; -*- buffer-read-only: t -*-
;;; init.el
(eval-when-compile
  (require 'package)
	(package-initialize)
  (defvar use-package-verbose t)
  (require 'use-package))

;;; Code:
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-check-vc-info nil)
 '(calendar-today-invisible-hook nil)
 '(calendar-today-visible-hook nil)
 '(cdlatex-math-modify-prefix 96)
 '(cdlatex-math-symbol-prefix 64)
 '(custom-safe-themes
	 '("0ad7f1c71fd0289f7549f0454c9b12005eddf9b76b7ead32a24d9cb1d16cbcbd"
		 "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" default))
 '(doc-view-continuous t)
 '(org-clock-persist 'history)
 '(package-selected-packages
	 '(## auctex calfw calfw-org cdlatex comment-dwim-2 consult-dir doom-modeline
							 doom-themes drag-stuff emacsql emojify flycheck
							 gnu-elpa-keyring-update highlight-symbol hl-todo lean4-mode lsp-mode
							 magit marginalia markdown-mode mixed-pitch multiple-cursors neotree
							 nyan-mode org org-alert org-bullets org-capture-pop-frame org-fragtog
							 org-fragtop org-journal org-mode org-pomodoro org-roam
							 org-super-agenda pandoc-mode pdf-tools tide use-package yasnippet
							 zotxt))
 '(package-vc-selected-packages
	 '((lean4-mode :url "https://github.com/leanprover-community/lean4-mode.git")))
 '(tetris-x-colors
	 [[229 192 123] [97 175 239] [209 154 102] [224 108 117] [152 195 121] [198 120 221]
		[86 182 194]]))

(org-babel-load-file (concat user-emacs-directory "config.org"))
;;; .emacs ends here

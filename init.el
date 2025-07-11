;;; -*- buffer-read-only: t -*-
;;; init.el
(eval-when-compile
  (require 'package)
  (require 'use-package)
	(package-initialize)
  (defvar use-package-verbose t))

(use-package package
  :ensure nil
  :custom
  (package-vc-register-as-project nil)
  (use-package-always-ensure t))

;;; Code:
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(calendar-today-invisible-hook nil)
 '(calendar-today-visible-hook nil)
 '(custom-safe-themes
	 '("0ad7f1c71fd0289f7549f0454c9b12005eddf9b76b7ead32a24d9cb1d16cbcbd"
		 "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" default))
 '(doc-view-continuous t)
 '(package-selected-packages
	 '(## auctex calfw calfw-org cdlatex comment-dwim-2 consult-dir define-word
				doom-modeline doom-themes drag-stuff emacsql emojify flycheck git-gutter
				git-gutter-fringe gnu-elpa-keyring-update gptel helm-org-rifle
				highlight-symbol image-roll lean4-mode lsp-mode magit marginalia
				markdown-mode mixed-pitch multiple-cursors mw-thesaurus neotree
				nerd-icons-completion nyan-mode org org-alert org-bullets org-capture
				org-capture-pop-frame org-fragtog org-fragtop org-journal org-mode
				org-pomodoro org-rifle org-roam org-super-agenda pandoc-mode pdf-tools
				rainbow-delimiters tide treesit-auto use-package vertico-directory vterm
				yasnippet zotxt))
 '(safe-local-variable-values '((TeX-command-extra-options . "-shell-escape")))
 '(tetris-x-colors
	 [[229 192 123] [97 175 239] [209 154 102] [224 108 117] [152 195 121] [198 120 221]
		[86 182 194]]))

(org-babel-load-file (concat user-emacs-directory "config.org"))
;;; .emacs ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

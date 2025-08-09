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
	 '("dfcd2b13f10da4e5e26eb1281611e43a134d4400b06661445e7cbb183c47d2ec"
		 "fd22a3aac273624858a4184079b7134fb4e97104d1627cb2b488821be765ff17"
		 "fffef514346b2a43900e1c7ea2bc7d84cbdd4aa66c1b51946aade4b8d343b55a"
		 "088cd6f894494ac3d4ff67b794467c2aa1e3713453805b93a8bcb2d72a0d1b53"
		 "87fa3605a6501f9b90d337ed4d832213155e3a2e36a512984f83e847102a42f4"
		 "0ad7f1c71fd0289f7549f0454c9b12005eddf9b76b7ead32a24d9cb1d16cbcbd"
		 "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" default))
 '(doc-view-continuous t)
 '(package-selected-packages
	 '(## auctex calfw calfw-org cdlatex comment-dwim-2 consult-dir define-word
				doom-modeline doom-themes drag-stuff elfeed elfeed-notifier elfeed-org
				emacsql emojify flycheck git-gutter git-gutter-fringe gnu-elpa-keyring-update
				gptel helm-org-rifle highlight-symbol image-roll lean4-mode lsp-mode magit
				marginalia markdown-mode mixed-pitch multiple-cursors mw-thesaurus neotree
				nerd-icons-completion nyan-mode orderless org org-alert org-bullets
				org-capture org-capture-pop-frame org-fragtog org-fragtop org-journal
				org-mode org-pomodoro org-rifle org-roam org-super-agenda pandoc-mode
				pdf-tools rainbow-delimiters rainbow-mode tide treesit-auto use-package
				vertico-directory vterm writeroom-mode yasnippet zotxt))
 '(package-vc-selected-packages
	 '((elfeed-notifier :url "https://github.com/flocks/elfeed-notifier.git")))
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

;;; -*- buffer-read-only: t -*-
;;; init.el
(eval-when-compile
  (require 'package)
  (defvar use-package-verbose t)
  (require 'use-package))

;;; Code:
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
	 ["#263238" "#ff5370" "#c3e88d" "#ffcb6b" "dark blue" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(auto-revert-check-vc-info nil)
 '(cdlatex-math-modify-prefix 96)
 '(cdlatex-math-symbol-prefix 64)
 '(custom-safe-themes
	 '("0ad7f1c71fd0289f7549f0454c9b12005eddf9b76b7ead32a24d9cb1d16cbcbd" "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" default))
 '(doc-view-continuous t)
 '(org-clock-persist 'history)
 '(org-modules
	 '(org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m))
 '(package-selected-packages
	 '(drag-stuff gnu-elpa-keyring-update zotxt git-gutter git-gutter-fringe nyan-mode marginalia vertico pdf-tools exec-path-from-shell org-pomodoro elpygen ein markdown-mode magit elpy multiple-cursors dimmer highlight-symbol org-journal org-capture-pop-frame org-alert pandoc-mode comment-dwim-2 neotree hl-todo auto-complete doom-modeline doom-themes org-bullets yasnippet cdlatex org auctex ## flycheck tide))
 '(tetris-x-colors
	 [[229 192 123]
		[97 175 239]
		[209 154 102]
		[224 108 117]
		[152 195 121]
		[198 120 221]
		[86 182 194]]))

(org-babel-load-file (concat user-emacs-directory "config.org"))
;;; .emacs ends here

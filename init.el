;;; init.el
(eval-when-compile
  (require 'package)
  (package-initialize)
  (defvar use-package-verbose t)
  (require 'use-package))

;;; Code:
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
												 ("melpa-stable" . "https://stable.melpa.org/packages/")
												 ("melpa" . "https://melpa.org/packages/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-check-vc-info nil)
 '(cdlatex-math-modify-prefix 96)
 '(cdlatex-math-symbol-prefix 64)
 '(custom-safe-themes
	 (quote
		("0ad7f1c71fd0289f7549f0454c9b12005eddf9b76b7ead32a24d9cb1d16cbcbd" "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" default)))
 '(doc-view-continuous t)
 '(doom-themes-enable-bold t)
 '(indent-guide-global-mode t)
 '(org-agenda-files
	 (quote
		("/Users/chenyiran/Org/planning.org" "/Users/chenyiran/Org/emacs keybindings.org" "/Users/chenyiran/Org/notes.org" "/Users/chenyiran/Org/journal/2020.org")))
 '(org-clock-persist (quote history))
 '(org-journal-date-format "%A, %m/%d/%Y")
 '(org-journal-dir "~/Org/journal/")
 '(org-journal-enable-encryption t)
 '(org-journal-encrypt-journal t)
 '(org-journal-file-format "%Y.org")
 '(org-journal-file-type (quote yearly))
 '(org-journal-time-format "%H:%M")
 '(org-modules
	 (quote
		(org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages
	 (quote
		(pdf-tools exec-path-from-shell indent-guide org-pomodoro elpygen ein markdown-mode magit elpy multiple-cursors dimmer highlight-symbol org-journal org-capture-pop-frame org-alert pandoc-mode comment-dwim-2 neotree hl-todo auto-complete doom-modeline doom-themes org-bullets yasnippet cdlatex org auctex ## flycheck tide)))
 '(python-shell-interpreter "python3.7")
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
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(indent-guide-face ((t (:inherit hl-line :foreground "dimgray")))))

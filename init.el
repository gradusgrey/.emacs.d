;;; init.el
(eval-when-compile
  (require 'package)
  (package-initialize)
  (defvar use-package-verbose t)
  (require 'use-package))

;;; Code:
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; Load up Org Mode and (now included) Org Babel for elisp embedded in Org Mode files
(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))

(let* ((org-dir (expand-file-name
                 "lisp" (expand-file-name
                         "org" (expand-file-name
                                "src" dotfiles-dir))))
       (org-contrib-dir (expand-file-name
                         "lisp" (expand-file-name
                                 "contrib" (expand-file-name
                                            ".." org-dir))))
       (load-path (append (list org-dir org-contrib-dir)
                          (or load-path nil))))
  ;; load up Org-mode and Org-babel
  (require 'org-install)
  (require 'ob-tangle))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-check-vc-info nil)
 '(cdlatex-math-modify-prefix 96)
 '(cdlatex-math-symbol-prefix 64)
 '(custom-enabled-themes (quote (doom-material)))
 '(custom-safe-themes
	 (quote
		("1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" default)))
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-default-load-average nil)
 '(doc-view-continuous t)
 '(global-auto-revert-mode t)
 '(org-agenda-files
	 (quote
		("~/.emacs.d/init.org" "/Users/chenyiran/Org/emacs keybindings.org" "/Users/chenyiran/Org/planning.org")))
 '(org-journal-date-format "%A, %m/%d/%Y")
 '(org-journal-dir "~/Org/journal/")
 '(org-journal-file-format "%Y.org")
 '(org-journal-file-type (quote yearly))
 '(org-journal-time-format "%H:%M")
 '(org-modules
	 (quote
		(org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages
	 (quote
		(magit elpy multiple-cursors dimmer highlight-symbol org-journal org-capture-pop-frame org-alert pandoc-mode comment-dwim-2 langtool neotree hl-todo auto-complete doom-modeline doom-themes latex-preview-pane org-bullets yasnippet pdf-tools cdlatex org material-theme auctex ## flycheck tide)))
 '(preview-orientation (quote above))
 '(safe-local-variable-values
	 (quote
		((eval add-hook
					 (quote after-save-hook)
					 (lambda nil
						 (org-babel-tangle))
					 nil t))))
 '(tetris-x-colors
	 [[229 192 123]
		[97 175 239]
		[209 154 102]
		[224 108 117]
		[152 195 121]
		[198 120 221]
		[86 182 194]]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/init.org")

;;; .emacs ends here

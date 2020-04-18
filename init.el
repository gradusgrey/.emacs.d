;; init.el --- Initialization file for Emacs
(eval-when-compile
  (require 'package)
  (package-initialize)
  (defvar use-package-verbose t)
  (require 'use-package))

;;; Code:
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(org-babel-load-file "~/.emacs.d/init.org")

;; (set-face-attribute 'default nil :height 165)

;; ;; start with planning.org
;; (setq initial-buffer-choice "~/Org/planning.org")

;; ;; add LaTeX-mode to prog-mode
;; (add-hook 'LaTeX-mode-hook
;;           (lambda () (run-hooks 'prog-mode-hook)))
;; ;; add org-mode to prog-mode
;; (add-hook 'org-mode-hook
;;           (lambda () (run-hooks 'prog-mode-hook)))

;; (global-set-key (kbd "M-C-f") 'toggle-frame-fullscreen) ;; full-screen

;; (add-hook 'before-save-hook 'delete-trailing-whitespace)
;; (show-paren-mode 1) ;; highlight matching parens
;; (setq show-paren-delay 0.0) ;; no delay in showing paren
;; (column-number-mode 1) ;; always displays the column number
;; (add-hook 'prog-mode-hook 'linum-mode) ;; displays line numbers

;; (setq-default auto-fill-function 'do-auto-fill) ;; auto-fill-mode enabled universally
;; (setq-default fill-column 85)

;; (global-flycheck-mode 1) ;; flycheck

;; (setq ring-bell-function 'ignore) ;; disable bell
;; (tool-bar-mode -1) ;; disable ugly toolbar
;; (scroll-bar-mode -1) ;; disable ugly scroll bar
;; (display-battery-mode t) ;; displays battery
;; (display-time-mode 1) ;; displays time
;; (setq display-time-default-load-average nil)
;; (setq display-time-string-forms
;; 			'((format-time-string "%m/%d (%a) %H:%M")))

;; (electric-pair-mode 1) ;; automatically close parens, etc.
;; (yas-global-mode 1) ;; enables yasnippets globally
;; (delete-selection-mode 1) ;; typing replaces selected word
;; (desktop-save-mode 1) ;; recover sessions on startup
;; (global-auto-revert-mode t) ;; auto revert
;; (global-hl-line-mode 1) ;; highlight current line

;; (global-hl-todo-mode 1) ;; highlight TODOs
;; (setq hl-todo-highlight-punctuation ":"
;; 			hl-todo-keyword-faces
;; 			`(("TODO"       error bold)
;;         ("FIXME"      warning bold)
;;         ("NOTE"       success bold))
;; 			hl-todo-include-modes
;; 			(quote (LaTeX-mode emacs-lisp-mode)))

;; (drag-stuff-global-mode 1)
;; (drag-stuff-define-keys)

;; (use-package comment-dwim-2
;; 	:bind ("M-;" . comment-dwim-2) ;; better commenting
;; 	)

;; (use-package multiple-cursors
;;   :bind
;;   ("C-S-c C-S-c" . mc/edit-lines)
;;   ("C->" . mc/mark-next-like-this)
;;   ("C-<" . mc/mark-previous-like-this)
;;   ("C-c C-<" . mc/mark-all-like-this))

;; ;; TODO: configure this
;; (global-set-key [(control f3)] 'highlight-symbol)
;; (global-set-key [f3] 'highlight-symbol-next)
;; (global-set-key [(shift f3)] 'highlight-symbol-prev)
;; (global-set-key [(meta f3)] 'highlight-symbol-query-replace)

;; ;; side bar
;; (global-set-key [f8] 'neotree-toggle)

;; (setq highlight-indent-guides-method 'character)

;; (setq-default cursor-type 'bar)
;; (setq-default tab-width 2)

;; (setq langtool-language-tool-jar
;; 			"~/Applications/LanguageTool-4.9/languagetool-commandline.jar")
;; (require 'langtool)
;; (setq langtool-default-language "en-US")
;; (add-hook 'text-mode-hook 'flyspell-mode)
;; (add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; (use-package auto-complete
;; 	:config
;; 	(ac-config-default)
;; 	(global-auto-complete-mode t) ;; auto-complete-mode
;; 	(add-to-list 'ac-modes 'LaTeX-mode)
;; 	)


;; ;;-----------------------------------------------------------------------------------
;; ;;  Org-mode settings
;; ;;-----------------------------------------------------------------------------------
;; (global-font-lock-mode 1)
;; (use-package org
;; 	:mode ("\\.org$" . org-mode)
;;   :init (org-clock-persistence-insinuate)
;; 	:commands (org-clock-persistence-insinuate)
;; 	:bind (("C-c l" . org-store-link)
;; 				 ("C-c a" . org-agenda)
;; 				 ("C-c c" . org-capture)
;; 				 ("C-c b" . org-switchb)
;; 				 )
;; 	:config
;; 	(defun org-clock-in-config (task)
;;   "Clock in.  If called without prefix, check whether we are in an org-mode buffer first."
;;   (interactive "P")
;;   (if select
;;       (org-clock-in select)
;;     (if (equal major-mode 'org-mode) (org-clock-in) (error "Not in Org-mode"))))


;; 	(setq org-agenda-files '("~/Org")
;; 				org-clock-persist 'history
;; 				org-startup-indented t
;; 				org-default-notes-file (concat org-directory "/notes.org")
;; 				org-support-shift-select t
;; 				org-todo-keywords (quote ((sequence "TODO" "IN PROGRESS" "|" "DONE")))
;; 				org-todo-keyword-faces (quote (("IN PROGRESS" :foreground "orange" :weight bold)))
;; 				org-clock-idle-time 15

;; 				org-agenda-deadline-faces
;; 				'((1.001 . error)
;; 					(1.0 . org-warning)
;; 					(0.5 . org-upcoming-deadline)
;; 					(0.0 . org-upcoming-distant-deadline))
;; 				)
;; 	(add-to-list 'org-modules 'org-habit)
;; 	)

;; (use-package org-capture
;; 	:config
;; 	;; append to the last headline by default
;; 	(defun org-journal-find-location ()
;; 		(org-journal-new-entry t)
;; 		(goto-char (point-max))
;; 		(re-search-backward "^\\* ")
;; 		)

;; 	(setq org-capture-templates
;; 			'(("t" "TODO Entry" entry (file "~/Org/Planning.org")
;; 				 "* TODO %^{Description}\n")
;; 				("j" "Journal Entry" entry
;; 					 (function org-journal-find-location)
;; 					 "* %(format-time-string org-journal-time-format) %^{Title}\n%i%?")
;; 				)
;; 			)
;; 	)

;; (use-package org-bullets
;; 	:ensure t
;; 	:config
;; 	(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; (use-package org-journal
;;   :ensure t
;;   :init
;;   :custom
;;   (org-journal-file-type 'yearly)
;;   (org-journal-file-format "%Y.org")
;;   (org-journal-dir  "~/Org/journal/")
;;   (org-journal-date-format "%A, %m/%d/%Y")
;;   (org-journal-time-format "%H:%M")
;; 	)
;; ;; Remove default keybindings
;; (global-unset-key (kbd "C-c C-j"))

;; ;;-----------------------------------------------------------------------------------
;; ;;  custom variables
;; ;;-----------------------------------------------------------------------------------
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(auto-revert-check-vc-info nil)
;;  '(cdlatex-math-modify-prefix 96)
;;  '(cdlatex-math-symbol-prefix 64)
;;  '(custom-enabled-themes (quote (doom-material)))
;;  '(custom-safe-themes
;; 	 (quote
;; 		("1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" default)))
;;  '(display-battery-mode t)
;;  '(display-time-24hr-format t)
;;  '(display-time-day-and-date t)
;;  '(display-time-default-load-average nil)
;;  '(doc-view-continuous t)
;;  '(global-auto-revert-mode t)
;;  '(org-journal-date-format "%A, %m/%d/%Y")
;;  '(org-journal-dir "~/Org/journal/")
;;  '(org-journal-file-format "%Y.org")
;;  '(org-journal-file-type (quote yearly))
;;  '(org-journal-time-format "%H:%M")
;;  '(org-modules
;; 	 (quote
;; 		(org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
;;  '(package-selected-packages
;; 	 (quote
;; 		(elpy multiple-cursors dimmer highlight-symbol org-journal org-capture-pop-frame org-alert pandoc-mode comment-dwim-2 langtool neotree hl-todo auto-complete doom-modeline doom-themes latex-preview-pane org-bullets yasnippet pdf-tools cdlatex org material-theme auctex ## flycheck tide)))
;;  '(preview-orientation (quote above))
;;  '(tetris-x-colors
;; 	 [[229 192 123]
;; 		[97 175 239]
;; 		[209 154 102]
;; 		[224 108 117]
;; 		[152 195 121]
;; 		[198 120 221]
;; 		[86 182 194]]))

;; ;;-----------------------------------------------------------------------------------
;; ;; theme aesthetics
;; ;;-----------------------------------------------------------------------------------
;; (use-package doom-modeline
;;   :ensure t
;;   :init (doom-modeline-mode 1)
;; 	:config (setq doom-modeline-height 15
;; 								doom-modeline-bar-width 3)
;; 	)

;; ;;-----------------------------------------------------------------------------------
;; ;; LaTeX setup
;; ;;-----------------------------------------------------------------------------------
;; (setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))
;; (setq exec-path (append exec-path '("/Library/TeX/texbin/")))
;; ;; Add /Library/TeX/texbin/ to emacs' PATH variable
;; (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin/"))
;; (setq exec-path (append exec-path '("/usr/local/bin/")))

;; (use-package tex
;;   :ensure auctex
;; 	:mode ("\\.tex\\'" . LaTeX-mode)
;;   :config
;;   (setq TeX-auto-save t
;; 				TeX-parse-self t
;; 				LaTeX-electric-left-right-brace 1 ;; automatic close tags
;; 				TeX-source-correlate-method 'synctex)
;; 	(setq-default TeX-master nil)
;; 	;; matching dollar sign
;; 	(add-hook 'LaTeX-mode-hook
;; 						(lambda () (set (make-local-variable 'TeX-electric-math)(cons "$" "$")))
;; 						'TeX-source-correlate-mode ;; correlate enabled
;; 						)

;; 	;; use Skim as external viewer
;; 	(add-hook 'LaTeX-mode-hook
;; 						(lambda()
;; 							(add-to-list 'TeX-expand-list
;; 													 '("%q" skim-make-url))))
;; 	(defun skim-make-url ()
;; 		(concat
;; 		 (TeX-current-line)
;; 		 " \""
;; 		 (expand-file-name (funcall file (TeX-output-extension) t)
;; 											 (file-name-directory (TeX-master-file)))
;; 		 "\" \""
;; 		 (buffer-file-name)
;; 		 "\""))
;; 	(setq TeX-view-program-list
;; 				'(("Skim" "/Applications/Skim.app/Contents/SharedSupport/displayline %q")))
;; 	(setq TeX-view-program-selection '((output-pdf "Skim")))
;; 	)

;; ;; (add-hook 'LaTeX-mode-hook 'turn-on-auto-fill) ;; auto-fill in LaTeX

;; (eval-after-load 'cdlatex ;; disable cdlatex auto paren
;; 	(lambda ()
;; 		(substitute-key-definition 'cdlatex-pbb nil cdlatex-mode-map)
;; 		(substitute-key-definition 'cdlatex-dollar nil cdlatex-mode-map)
;; 		))

;; (eval-after-load 'latex
;; 	'(setq LaTeX-clean-intermediate-suffixes
;; 				 (append LaTeX-clean-intermediate-suffixes
;; 								 (list "\\.fdb_latexmk" "\\.tex~" "\\.log"))
;; 				 LaTeX-clean-output-suffixes
;; 				 (append LaTeX-clean-output-suffixes
;; 								 (list "\\.dvi" "\\.ps" "\\.xdv" "\\.log" "\\.prv" "\\.fmt"))))

;; (use-package cdlatex
;; 	:hook (LaTeX-mode . turn-on-cdlatex)
;; 	:ensure t
;; 	:config
;; 	(setq cdlatex-math-modify-prefix 96
;; 				cdlatex-math-symbol-prefix 64)
;; 	(setq cdlatex-math-symbol-alist
;; 				'((?0 ("\\varnothing" ))
;; 					(?e ("\\varepsilon"))
;; 					(?> ("\\geq"))
;; 					(?< ("\\leq"))
;; 					(?{ ("\\subseteq"))
;; 					(?~ ("\\simeq"))
;; 					(?! ("\\neq" "\\neg"))
;; 					))
;; 	(setq cdlatex-math-modify-alist
;; 				'((?b "\\mathbb" nil t nil nil)
;; 					(?c "\\mathcal" nil t nil nil)
;; 					(?2 "\\sqrt" nil t nil nil)
;; 					(?t "\\text" nil t nil nil)
;; 					)))

;; ;;-----------------------------------------------------------------------------------
;; ;; python
;; ;;-----------------------------------------------------------------------------------
;; ;; TODO: configure this
;; (use-package elpy
;;   :ensure t
;;   :init
;;   (elpy-enable))


(provide '.emacs)
;;; .emacs ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
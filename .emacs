;; load emacs 24's package system. Add MELPA repository.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list
   (quote
    (("pdflatex" "%`pdflatex%(mode)% %t" TeX-run-command nil t)
     ("xelatex" "%`xelatex%(mode)% %t" TeX-run-TeX nil t)
     ("TeX" "%(PDF)%(tex) %(file-line-error) %`%(extraopts) %S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %T" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "amstex %(PDFout) %`%(extraopts) %S%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t t :help "Generate PostScript file")
     ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil t :help "Convert DVI file to PostScript")
     ("Dvipdfmx" "dvipdfmx %d" TeX-run-dvipdfmx nil t :help "Convert DVI file to PDF with dvipdfmx")
     ("Ps2pdf" "ps2pdf %f" TeX-run-ps2pdf nil t :help "Convert PostScript file to PDF")
     ("Glossaries" "makeglossaries %s" TeX-run-command nil t :help "Run makeglossaries to create glossary file")
     ("Index" "makeindex %s" TeX-run-index nil t :help "Run makeindex to create index file")
     ("upMendex" "upmendex %s" TeX-run-index t t :help "Run upmendex to create index file")
     ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
                  (company-abbrev company-dabbrev-code company-gtags company-etags company-abbrev company-keywords)
                  company-oddmuse company-abbrev company-dabbrev)))
 '(custom-enabled-themes (quote (molokai)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(dired-listing-switches "-alh")
 '(doc-view-resolution 300)
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(gnuplot-inline-image-mode (quote dedicated))
 '(indicate-buffer-boundaries (quote ((top . left) (bottom . right))))
 '(org-agenda-files
   (quote
    ("~/Documents/todo_org/todo" "~/Documents/my_diary/org-mode.org" "~/Documents/my_diary/diary.org" "~/Documents/python_scripts/python_learning_note/python_learning_note.org" "~/Documents/paper/paper.org")))
 '(org-startup-with-inline-images t)
 '(package-selected-packages
   (quote
    (smart-mode-line magit-todos beacon elpy draft-mode dracula-theme peep-dired htmlize session switch-window gnuplot-mode bongo pdf-tools gnuplot exec-path-from-shell ## org-timeline deft magit flycheck cdlatex company 2048-game helm-swoop w3m emms use-package yasnippet rainbow-mode multiple-cursors bm latex-preview-pane auctex multi-term smex helm color-theme-solarized autopair ace-jump-mode)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(tramp-default-host "210.16.125.76")
 '(tramp-default-method "ssh")
 '(tramp-default-user "ligy")
 '(word-wrap nil))

;;(set-face-font 'default "-jmk-neep alt-medium-r-*-*-20-*-*-*-c-*-iso8859-1")

(require 'package)
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;;(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/") t)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;(add-to-list 'package-archives '("melpa" . "http:/melpa.org/packages/") t)
;;(add-to-list 'package-archives '("popkit" . "http://elpa.popkit.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages"))

;;solarized
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/theme/emacs-color-theme-solarized")
;;(load-theme 'solarized t)
;;(set-frame-parameter nil 'background-mode 'dark)
;;(set-terminal-parameter nil 'background-mode 'dark)

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/theme/zenburn-emacs")
;;(load-theme 'zenburn t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/theme/molokai-theme")
(load-theme 'molokai t)

;;(require 'color-theme)
;;(setq color-theme-is-global t)
;;(color-theme-initialize)
;;(color-theme-comidia)
;;(color-theme-comidia)

;;(line-number-mode t)
;;(global-linum-mode t);;显示行号
;;(setq linum-format "%d ")

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'revert-buffer)

;; (defun dont-kill-emacs()
;;   "Disable C-x C-c binding execute kill-emacs."
;;   (interactive)
;;   (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))
;; (global-set-key (kbd "C-x C-c") 'dont-kill-emacs)

(require 'ido)
(ido-mode t)
;;M-x customize-group RET ido RET

(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)

;;retro orange


(require 'switch-window)
(setq switch-window-qwerty-shortcuts
      '("a" "s" "d" "f" "j" "k" "l" ";" "w" "e" "i" "o"))
(setq switch-window-shortcut-style 'qwerty)
;; (setq switch-window-shortcut-appearance 'asciiart)
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)

(global-set-key (kbd "C-x 4 d") 'switch-window-then-dired)
(global-set-key (kbd "C-x 4 f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 m") 'switch-window-then-compose-mail)
(global-set-key (kbd "C-x 4 r") 'switch-window-then-find-file-read-only)

(global-set-key (kbd "C-x 4 C-f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 C-o") 'switch-window-then-display-buffer)

(global-set-key (kbd "C-x 4 0") 'switch-window-then-kill-buffer)
;; (setq switch-window-increase 9) ;Increase or decrease this number.
;; (setq switch-window-threshold 2)
;;(setq switch-window-auto-resize-window t)
;;(setq switch-window-default-window-size 0.8) ;80% of frame size

;;(require 'multi-term)
(setq multi-term-program "/bin/zsh")
(add-hook 'term-mode-hook
	  (lambda ()
	    (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
	    (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))

;;maximize buffer
;; (defun toggle-maximize-buffer () "Maximize buffer"
;;        (interactive)
;;        (if (= 1 (length (window-list)))
;;            (jump-to-register '_)
;;          (progn
;;            (window-configuration-to-register '_)
;;            (delete-other-windows))))
;; (global-set-key (kbd "C-x +") 'toggle-maximize-buffer)

(global-set-key (kbd "<S-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<C-f2>") 'bm-previous)
;(setq bm-cycle-all-buffers t)

;;ace-jump-mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;;multiple-cursors
;;(require 'multiple-cursors)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; (use-package multiple-cursors
;;      :bind
;;      ("C-S-c C-S-c") . 'mc/edit-lines)
;;      ("C->") . 'mc/mark-next-like-this)
;;      ("C-<") . 'mc/mark-previous-like-this)
;;      ("C-c C-<") . 'mc/mark-all-like-this))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "WenQuanYi Micro Hei Mono" :foundry "WQYF" :slant normal :weight normal :height 143 :width normal)))))

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
(setq org-todo-keywords
  '((type "Important(i!)" "|")
    (sequence "PENDING(p!)" "TODO(t!)"  "|" "DONE(d!)" "ABORT(a@/!)")
))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;;(desktop-save-mode 1)

(when (locate-library "auctex")
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)

  ;; (add-hook 'LaTeX-mode-hook 'auto-fill-mode)
  (add-hook 'LaTeX-mode-hook 'visual-line-mode)
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
  (setq reftex-plug-into-AUCTeX t)
)

;;helm-swoop
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
(setq helm-swoop-speed-or-color nil)
(setq helm-swoop-move-to-line-cycle t)

(setq set-mark-command-repeat-pop t)

(global-set-key (kbd "C-x C-d") 'ediff-buffers)


;(setq tramp-syntax 'url)

(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
;C-c C-p C-p   preview at point
;C-c C-p C-b   preview buffer
(add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode

(c-set-offset 'defun-block-intro '++)
(c-set-offset 'statement-block-intro '++)
(setq-default indent-tabs-mode nil)
(add-to-list 'write-file-functions 'delete-trailing-whitespace)

;;hide-show code
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'ess-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)
(global-set-key (kbd "<f1>") 'hs-toggle-hiding)

;;flymake
;; (autoload 'flymake-find-file-hook "flymake" "" t)
;; (add-hook 'find-file-hook 'flymake-find-file-hook)
;; (setq flymake-gui-warnings-enabled nil)
;;(setq flymake-log-level 0)

;;flycheck
;; (add-hook 'after-init-hook #'global-flycheck-mode)

;;vc
(eval-after-load "vc-hooks"
  '(define-key vc-prefix-map "=" 'vc-ediff))

;;magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;;Copy previous line character by chracter
(defun insert-char-from-previous-line ()
  "Copy previous line character by chracter"
  (interactive)
  (let ((curpoint (point))
        (curcolumn (current-column)))
    (forward-line -1)
    (forward-char curcolumn)
    (let (( char-above (followeing-char) ))
    (goto-char curpoint)
    (if (not (char-equal char-above ?\n ))
        (insert char-above)))))
(global-set-key (kbd "C-S-f") 'insert-char-from-previous-line)

;; (add-hook 'after-init-hook #'global-flycheck-mode)

(defun qiang-comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.  Replace default behaviour of comment-dwim, when it insert comment at the end of the line. as ARG."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key "\M-;" 'qiang-comment-dwim-line)

;; (setq x-select-enable-clipboard t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((gnuplot . t)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((latex . t)))
;; add additional languages with '((language . t)))

;; all python code be safe
(defun my-org-confirm-babel-evaluate (lang body)
(not (string= lang "python")))
(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

(setq-default ispell-program-name "aspell")
(setq ispell-list-command "--list")

;;disable electric-indent-mode, no indentation after inserting newline
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

(fset 'yes-or-no-p 'y-or-n-p)

;; load the file
(require 'gnuplot-mode)
;; automatically open files ending with .gp or .gnuplot in gnuplot mode
(setq auto-mode-alist
(append '(("\\.\\(gp\\|gnuplot\\)$" . gnuplot-mode)) auto-mode-alist))

(fset 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "C-x |") 'toggle-window-split)

(use-package pdf-tools
 :config
 ;; initialise
 (pdf-tools-install)
 ;; open pdfs scaled to fit page
 (setq-default pdf-view-display-size 'fit-page)
 ;; automatically annotate highlights
 (setq pdf-annot-activate-created-annotations t)
 ;; use normal isearch
 ;; (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
 ;; turn off cua so copy works
 ;; (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
 ;; more fine-grained zooming
 (setq pdf-view-resize-factor 1.05)
 ;; keyboard shortcuts
 (define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
 (define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
 (define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete))

;; auto revert all buffers when files changed on disk
(global-auto-revert-mode t)

;;disable mouse click in eamcs
(dolist (k '([mouse-1] [down-mouse-1] [drag-mouse-1] [double-mouse-1] [triple-mouse-1]
             [mouse-2] [down-mouse-2] [drag-mouse-2] [double-mouse-2] [triple-mouse-2]
             [mouse-3] [down-mouse-3] [drag-mouse-3] [double-mouse-3] [triple-mouse-3]
             [mouse-4] [down-mouse-4] [drag-mouse-4] [double-mouse-4] [triple-mouse-4]
             [mouse-5] [down-mouse-5] [drag-mouse-5] [double-mouse-5] [triple-mouse-5]))
  (global-unset-key k))

;;hide or show dotfiles using C-x M-o
(require 'dired-x)
(setq-default dired-omit-files-p t) ; Buffer-local variable
(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))

;; sort dired file using C-u s

(setq exec-path (append exec-path '("/usr/texbin")))

;; iimage mode
(autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
(autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)

(use-package peep-dired
  :ensure t
  :defer t ; don't access `dired-mode-map' until `peep-dired' is loaded
  :bind (:map dired-mode-map
              ("P" . peep-dired)))

;;always hide owner permission info
(defun xah-dired-mode-setup ()
  "to be run as hook for `dired-mode'."
  (dired-hide-details-mode 1))
(add-hook 'dired-mode-hook 'xah-dired-mode-setup)

;;copy from one dired dir to the next dired dir shown in a split window
(setq dired-dwim-target t)

(require 'dired )
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file) ; was dired-advertised-find-file

(define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")))  ; was dired-up-directory

;;new emacs command line A-y, show defined macros
(global-set-key (kbd "C-x C-k e") 'helm-execute-kmacro)

;; (elpy-enable);;a pytohn mode

(beacon-mode 1);;show cursor position
(sml/setup);;power-line-mode

;;complete file name
(fset 'my-complete-file-name
        (make-hippie-expand-function '(try-complete-file-name-partially
                                       try-complete-file-name)))
(global-set-key "\M-\\" 'my-complete-file-name)

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/") t))

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list
   (quote
    (("TeX" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "amstex %(PDFout) %(extraopts) %`%S%(mode)%' %t" TeX-run-TeX nil
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
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command")
     ("xelatex" "%`xelatex%(mode)% %t" TeX-run-command nil t)
     ("pdflatex" "%`pdflatex%(mode)% %t" TeX-run-command nil t))))
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (molokai)))
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(ediff-merge-split-window-function (quote split-window-horizontally))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(magit-dispatch-arguments nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files (quote ("~/Documents/TODO_list/todo")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(transient-mark-mode (quote (only . t)))
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c37300")
     (60 . "#b97d00")
     (80 . "#b58900")
     (100 . "#a18700")
     (120 . "#9b8700")
     (140 . "#948700")
     (160 . "#8d8700")
     (180 . "#859900")
     (200 . "#5a942c")
     (220 . "#439b43")
     (240 . "#2da159")
     (260 . "#16a870")
     (280 . "#2aa198")
     (300 . "#009fa7")
     (320 . "#0097b7")
     (340 . "#008fc7")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(word-wrap t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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

(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)

;;(require 'multiple-cursors)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C-c .") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c ,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; (defun multiple-cursors/init-multiple-cursors ()
;; (use-package multiple-cursors
;; 	     :config
;; 	     ;; multiple-cursors
;; 	     (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;; 	     (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; 	     (global-set-key (kbd "C-+") 'mc/mark-next-like-this)
;; 	     (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; 	     ;; From active region to multiple cursors:
;; 	     (global-set-key (kbd "C-c c r") 'set-rectangular-region-anchor)
;; 	     (global-set-key (kbd "C-c c c") 'mc/edit-lines)
;; 	     (global-set-key (kbd "C-c c e") 'mc/edit-ends-of-lines)
;; 	     (global-set-key (kbd "C-c c a") 'mc/edit-beginnings-of-lines)
;; 	     ))

(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)
(setq switch-window-shortcut-style 'qwerty)
(setq switch-window-qwerty-shortcuts
      '("a" "s" "d" "f" "j" "k" "l" ";" "w" "e" "i" "o"))
(setq switch-window-increase 12) ;Increase or decrease this number.
(setq switch-window-shortcut-appearance 'asciiart)
(setq switch-window-threshold 2)
;;(setq switch-window-auto-resize-window t)
;;(setq switch-window-default-window-size 0.8) ;80% of frame size

;;(require 'multi-term)
(setq multi-term-program "/bin/zsh")
(add-hook 'term-mode-hook
	(lambda ()
	(add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
	(add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))

;;maximize buffer
(defun toggle-maximize-buffer () "Maximize buffer"
       (interactive)
       (if (= 1 (length (window-list)))
	   (jump-to-register '_)
	 (progn
	   (window-configuration-to-register '_)
	         (delete-other-windows))))
(global-set-key (kbd "C-x +") 'toggle-maximize-buffer)

;; (defun refresh-file ()
;;   (interactive)
;;   (revert-buffer t (not (buffer-modified-p)) t))
;; (global-set-key [(control f5)] 'refresh-file)

;;(require 'autopair)
;;(autopair-global-mode) ;; to enable in all buffers

;; (add-hook 'LaTeX-mode-hook
;;       (lambda ()
;; 	(setq TeX-auto-untabify t     ; remove all tabs before saving
;; 	      TeX-engine 'default       ; use xelatex default
;; 	      TeX-show-compilation t) ; display compilation windows
;; 	;; (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
;; 	(setq TeX-save-query nil)
;; 	(imenu-add-menubar-index)
;; 	(define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

;; (latex-preview-pane-enable)

;; (require 'cl-lib)
;; (defvar last-displayed-doc-view-buffer nil)

;; (defun get-last-displayed-doc-view-buffer ()
;;   (setq last-displayed-doc-view-buffer (current-buffer)))

;; (add-hook 'doc-view-mode-hook 'get-last-displayed-doc-view-buffer)

;; (defun doc-view-autofit-fit ()
;;   "Fits the document in the selected window's buffer
;; delayed with a timer, so multiple calls in succession
;; don't cause as much overhead."
;;   (if (null doc-view-autofit-timer)
;;     (setq doc-view-autofit-timer
;;       (run-with-timer doc-view-autofit-timer-start nil (lambda ()
;;         (let* (
;;             (selected-window
;;               (cond
;;                 ((eq major-mode 'doc-view-mode)
;;                   (selected-window))
;;                 (t
;;                   (get-buffer-window last-displayed-doc-view-buffer))))
;;             (current-buffer
;;               (cond
;;                 ((eq major-mode 'doc-view-mode)
;;                   (current-buffer))
;;                 (t
;;                   (get-buffer last-displayed-doc-view-buffer))))
;;             (selected-fit
;;               (when (buffer-live-p (get-buffer current-buffer))
;;                 (with-current-buffer (get-buffer current-buffer)
;;                   doc-view-autofit-type))) )
;;           (when (window-live-p selected-window)
;;             (with-selected-window selected-window
;;               (when doc-view-autofit-timer (cancel-timer doc-view-autofit-timer))
;;               (setq doc-view-autofit-timer nil)
;;               (cond
;;                 ((eq 'width selected-fit)
;;                   (doc-view-fit-width-to-window))
;;                 ((eq 'height selected-fit)
;;                   (doc-view-fit-height-to-window))
;;                 ((eq 'page selected-fit)
;;                   (doc-view-fit-page-to-window)))))))))
;;     (timer-inc-time doc-view-autofit-timer doc-view-autofit-timer-inc)))
;; (add-hook 'doc-view-mode-hook 'doc-view-autofit-mode t)

(global-set-key (kbd "<S-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<C-f2>") 'bm-previous)
(setq bm-cycle-all-buffers t)

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;(define-key global-map (kbd "C-u C-c SPC") 'ace-jump-char-mode)

(setq w3m-use-cookies t)
(setq w3m-home-page "http://www.baidu.com")

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

(setq mark-holidays-in-calendar t)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;helm-swoop
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
(setq helm-swoop-speed-or-color nil)
(setq helm-swoop-move-to-line-cycle t)

;;type C-<SPC> instead of C-u C-<SPC> to cycle through the mark ring, immediately after you type C-u C-<SPC>
(setq set-mark-command-repeat-pop t)

(global-set-key (kbd "C-x C-d") 'ediff-buffers)

(setq tramp-default-method "ssh"
      tramp-default-user "ligy"
      tramp-default-host "210.26.51.242")

;; (set-language-environment 'Chinese-GB)
;; (set-keyboard-coding-system 'utf-8)
;; (set-clipboard-coding-system 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-buffer-file-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (set-selection-coding-system 'utf-8)
;; (modify-coding-system-alist 'process "*" 'utf-8)
;; (setq default-process-coding-system '(utf-8 . utf-8))
;; (setq-default pathname-coding-system 'utf-8)
;; (set-file-name-coding-system 'utf-8)
;; (setq ansi-color-for-comint-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

(autoload 'company-mode "company" nil t)
;; (autoload 'helm-company "helm-company") ;; Not necessary if using ELPA package
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

;;cdlatex
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode

(c-set-offset 'defun-block-intro '++)
(c-set-offset 'statement-block-intro '++)
(setq-default indent-tabs-mode nil)
(add-to-list 'write-file-functions 'delete-trailing-whitespace)

;;flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;vc
(eval-after-load "vc-hooks"
  '(define-key vc-prefix-map "=" 'vc-ediff))

;;magit
(global-set-key (kbd "C-x g") 'magit-status)

;;Copy previous line character by character"
(defun insert-char-from-previous-line ()
   "Copy previous line character by character"
   (interactive)
   (let ((curpoint (point))
    (curcolumn (current-column)))
      (forward-line -1)
      (forward-char curcolumn)
      (let ((char-above (following-char) ))
      (goto-char curpoint)
      (if (not (char-equal char-above ?\n ))
	  (insert char-above)))))
(global-set-key (kbd "C-S-f") 'insert-char-from-previous-line)

(setq auto-save-default nil) ; stop creating #autosave# files
(setq backup-directory-alist (quote (("." . "~/.backups"))))
;(setq make-backup-files nil)

(add-hook 'after-init-hook #'global-flycheck-mode)

(set-face-attribute 'default nil  :font "WenQuanYi Micro Hei Mono")

;;origami
(global-set-key (kbd "<f1>") 'origami-recursively-toggle-node)

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
;; all python code be safe
(defun my-org-confirm-babel-evaluate (lang body)
(not (string= lang "python")))
(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

;;Disable electric-indent-mode, no indentation after inserting newline
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; turn on highlighting current line
(global-hl-line-mode 1)

;; toggle between verticle and herizontal splits
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))
(global-set-key (kbd "C-x |") 'toggle-window-split)

;; set up babel support
;; (require 'org-babel)
;; (require 'org-babel-init)
;; (require 'org-babel-gnuplot)
;; add additional languages with (require 'org-babel-language)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((gnuplot . t)))
;; add additional languages with '((language . t)))

;; (use-package pdf-tools
;;  :config
;;  ;; initialise
;;  (pdf-tools-install)
;;  ;; open pdfs scaled to fit page
;;  (setq-default pdf-view-display-size 'fit-page)
;;  ;; automatically annotate highlights
;;  (setq pdf-annot-activate-created-annotations t)
;;  ;; use normal isearch
;;  ;; (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
;;  ;; turn off cua so copy works
;;  ;; (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
;;  ;; more fine-grained zooming
;;  (setq pdf-view-resize-factor 1.05)
;;  ;; keyboard shortcuts
;;  (define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
;;  (define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
;;  (define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete))

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
(put 'dired-find-alternate-file 'disabled nil)

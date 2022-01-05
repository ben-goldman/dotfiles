;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Benjamin Goldman"
      user-mail-address "bngldmn@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;(global-set-key (kbd "<SPC> t t") 'neotree-toggle)


(setq reftex-default-bibliography '("/Volumes/Extreme SSD/science-research/articles/references.bib"))
(setq org-ref-default-bibliography '("/Volumes/Extreme SSD/science-research/articles/references.bib"))
(setq org-latex-pdf-process
      '("pdflatex -interaction nonstopmode -output-directory %o %f"
	"bibtex %b"
	"pdflatex -interaction nonstopmode -output-directory %o %f"
	"pdflatex -interaction nonstopmode -output-directory %o %f"))

(add-hook 'org-mode-hook #'org-bullets-mode)


(use-package! org-ref
  :after org
  :init
  (setq org-ref-completion-library 'org-ref-ivy-cite))


(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(when (window-system)
  (set-frame-font "FiraCode Nerd Font"))
(let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
               (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
               (36 . ".\\(?:>\\)")
               (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
               (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
               (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
               (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
               (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
               (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
               (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
               (48 . ".\\(?:x[a-zA-Z]\\)")
               (58 . ".\\(?:::\\|[:=]\\)")
               (59 . ".\\(?:;;\\|;\\)")
               (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
               (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
               (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
               (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
               (91 . ".\\(?:]\\)")
               (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
               (94 . ".\\(?:=\\)")
               (119 . ".\\(?:ww\\)")
               (123 . ".\\(?:-\\)")
               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
               (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
               )
             ))
  (dolist (char-regexp alist)
    (set-char-table-range composition-function-table (car char-regexp)
                          `([,(cdr char-regexp) 0 font-shape-gstring]))))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(set-variable 'scheme-program-name "chez")

(set-variable 'org-ascii-text-width 100)

(after! ox-latex (add-to-list 'org-latex-classes
                              '("basic"
                                "\\documentclass{basic}"
                                ("\\section{%s}" . "\\section*{%s}")
                                ("\\subsection{%s}" . "\\subsection*{%s}")
                                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                                ("\\paragraph{%s}" . "\\paragraph*{%s}")
                                ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

;
(setq haskell-process-type 'ghci)
(setq haskell-process-log t)

;; HYPER MEGA AWESOME KEYBINDINGS DVORAK IS LITTT EVIL IS LITTT WOOHOO!!!!
(define-key evil-motion-state-map (kbd "t") 'evil-next-visual-line)
(define-key evil-motion-state-map (kbd "n") 'evil-previous-visual-line)
(define-key evil-motion-state-map (kbd "h") 'evil-backward-char)
(define-key evil-motion-state-map (kbd "s") 'evil-forward-char)
(define-key evil-normal-state-map (kbd "t") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "n") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "h") 'evil-backward-char)
(define-key evil-normal-state-map (kbd "s") 'evil-forward-char)
(define-key evil-visual-state-map (kbd "t") 'evil-next-visual-line)
(define-key evil-visual-state-map (kbd "n") 'evil-previous-visual-line)
(define-key evil-visual-state-map (kbd "h") 'evil-backward-char)
(define-key evil-visual-state-map (kbd "s") 'evil-forward-char)

(define-key evil-motion-state-map (kbd "C-s") 'evil-forward-word-begin)
(define-key evil-motion-state-map (kbd "C-h") 'evil-backward-word-begin)
(define-key evil-motion-state-map (kbd "C-t") 'forward-paragraph)
(define-key evil-motion-state-map (kbd "C-n") 'backward-paragraph)
(define-key evil-normal-state-map (kbd "C-s") 'evil-forward-word-begin)
(define-key evil-normal-state-map (kbd "C-h") 'evil-backward-word-begin)
(define-key evil-normal-state-map (kbd "C-t") 'forward-paragraph)
(define-key evil-normal-state-map (kbd "C-n") 'backward-paragraph)
(define-key evil-visual-state-map (kbd "C-s") 'evil-forward-word-begin)
(define-key evil-visual-state-map (kbd "C-h") 'evil-backward-word-begin)
(define-key evil-visual-state-map (kbd "C-t") 'forward-paragraph)
(define-key evil-visual-state-map (kbd "C-n") 'backward-paragraph)

(define-key evil-motion-state-map (kbd "-") 'evil-beginning-of-line)
(define-key evil-motion-state-map (kbd "_") 'evil-end-of-line)
(define-key evil-normal-state-map (kbd "-") 'evil-beginning-of-line)
(define-key evil-normal-state-map (kbd "_") 'evil-end-of-line)
(define-key evil-visual-state-map (kbd "-") 'evil-beginning-of-line)
(define-key evil-visual-state-map (kbd "_") 'evil-end-of-line)

(define-key evil-motion-state-map (kbd "H") 'evil-beginning-of-visual-line)
(define-key evil-motion-state-map (kbd "S") 'evil-end-of-visual-line)
(define-key evil-normal-state-map (kbd "H") 'evil-beginning-of-visual-line)
(define-key evil-normal-state-map (kbd "S") 'evil-end-of-visual-line)
(define-key evil-visual-state-map (kbd "H") 'evil-beginning-of-visual-line)
(define-key evil-visual-state-map (kbd "S") 'evil-end-of-visual-line)

(define-key evil-motion-state-map (kbd "N") 'evil-goto-first-line)
(define-key evil-motion-state-map (kbd "T") 'evil-goto-line)
(define-key evil-normal-state-map (kbd "N") 'evil-goto-first-line)
(define-key evil-normal-state-map (kbd "T") 'evil-goto-line)
(define-key evil-visual-state-map (kbd "N") 'evil-goto-first-line)
(define-key evil-visual-state-map (kbd "T") 'evil-goto-line)

(define-key evil-normal-state-map (kbd "C-u") 'evil-undo)

(define-key evil-motion-state-map (kbd "C--") 'evil-force-normal-state)
(define-key evil-insert-state-map (kbd "C--") 'evil-force-normal-state)
(define-key evil-visual-state-map (kbd "C--") 'evil-force-normal-state)
(define-key evil-replace-state-map (kbd "C--") 'evil-force-normal-state)

(define-key evil-normal-state-map (kbd "i") 'evil-delete-char)
(define-key evil-normal-state-map (kbd "d") 'evil-delete)

(define-key evil-normal-state-map (kbd "a") 'evil-insert)
(define-key evil-normal-state-map (kbd "u") 'evil-append)
(define-key evil-normal-state-map (kbd "A") 'evil-insert-line)
(define-key evil-normal-state-map (kbd "U") 'evil-append-line)
(define-key evil-normal-state-map (kbd "e") 'evil-open-above)

(define-key evil-normal-state-map (kbd "C--") 'save-buffer)

(define-key evil-insert-state-map (kbd "C-s") 'evil-forward-char)
(define-key evil-insert-state-map (kbd "C-h") 'evil-backward-char)
(define-key evil-insert-state-map (kbd "C-t") 'evil-next-visual-line)
(define-key evil-insert-state-map (kbd "C-n") 'evil-previous-visual-line)
(define-key evil-insert-state-map (kbd "C-d") 'evil-delete)

(define-key evil-normal-state-map (kbd "RET") 'evil-open-below)

(eval-after-load 'org-mode-map
  '(define-key org-mode-map (kbd "C-h") nil))

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt --InteractiveShell.display_page=True")


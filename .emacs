(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(c-basic-offset 4)
 '(c-tab-always-indent t)
 '(case-fold-search t)
 '(current-language-environment "ASCII")
 '(default-input-method "latin-1-prefix")
 '(delete-selection-mode nil nil (delsel))
 '(face-font-selection-order (quote (:width :height :weight :slant)))
 '(global-font-lock-mode t nil (font-lock))
 '(global-set-key "" t)
 '(inverse-video nil)
 '(mouse-wheel-mode t nil (mwheel))
 '(scroll-bar-mode (quote left))
 '(show-paren-mode t nil (paren))
 '(tab-always-indent t)
 '(transient-mark-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )

;; Move around frames with [shift] + arrows
(windmove-default-keybindings)

(fset 'yes-or-no-p 'y-or-n-p)

(setq user-mail-address "sds@dcs.gla.ac.uk")
(setq user-full-name "Stephen Strowes")

;; Remote file editing via ssh
(add-to-list 'load-path "~/.emacs.d/tramp/lisp/")
(require 'tramp)
(setq tramp-default-method "ssh")

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))


;;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Show line/col numbers in the mode line
(line-number-mode 1)
(column-number-mode 1)

;; Disable splash screen and startup message.
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; In every buffer, the line which contains the cursor will be fully
;; highlighted
(global-hl-line-mode 1)


;; Ctrl-x,m and Ctrl-c,m= == Alt-x
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)


;; ===== Set standard indent ====
(setq standard-indent 4)
(setq default-tab-width 4)

;; This works, but emacs seems to stall for a brief moment on starting up
;; ... may have to try and fix.
(set-default-font "6x13")

;; Disable splash screen and startup message.
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)


(setq make-backup-files nil) ;; No backups



;; ========== Set the fill column ==========
;;(setq-default fill-column 73)
;; This should actually turn on auto-fill-mode by default in all major
;; modes. The other way to do this is to turn on the fill for specific modes
;; via hooks.
(setq auto-fill-mode 1)

;; ===== Make Text mode the default mode for new buffers =====
(setq default-major-mode 'text-mode)


;; Flyspell stuff
(add-hook 'LaTeX-mode-hook      'flyspell-mode)
(add-hook 'text-mode-hook       'flyspell-mode)
(add-hook 'c-mode-hook          'flyspell-prog-mode)
(add-hook 'c++-mode-hook        'flyspell-prog-mode)
(add-hook 'sh-mode-hook         'flyspell-prog-mode)
(add-hook 'makefile-mode-hook   'flyspell-prog-mode)
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode)
(add-hook 'java-mode-hook       'flyspell-prog-mode)
(add-hook 'erlang-mode-hook     'flyspell-prog-mode)
(add-hook 'python-mode-hook     'flyspell-prog-mode)
(add-hook 'sgml-mode-hook       'flyspell-prog-mode)
(add-hook 'html-mode-hook       'flyspell-prog-mode)

;; Duplicate words are not errors
(setq flyspell-doublon-as-error-flag nil)

;; Auto fill, to avoid some M-q's
(add-hook 'text-mode-hook       'turn-on-auto-fill)
(add-hook 'LaTeX-mode-hook      'turn-on-auto-fill)
(add-hook 'c-mode-hook          'turn-on-auto-fill)
(add-hook 'c++-mode-hook        'turn-on-auto-fill)
(add-hook 'sh-mode-hook         'turn-on-auto-fill)
(add-hook 'makefile-mode-hook   'turn-on-auto-fill)
(add-hook 'emacs-lisp-mode-hook 'turn-on-auto-fill)
(add-hook 'java-mode-hook       'turn-on-auto-fill)
(add-hook 'erlang-mode-hook     'turn-on-auto-fill)
(add-hook 'python-mode-hook     'turn-on-auto-fill)
(add-hook 'sgml-mode-hook       'turn-on-auto-fill)
(add-hook 'html-mode-hook       'turn-on-auto-fill)

;; Outline mode stuff
(add-hook 'text-mode-hook      'outline-minor-mode)
(add-hook 'LaTeX-mode-hook      'outline-minor-mode)


;; Load the ensime lisp code...
;(add-to-list 'load-path "~/.emacs.d/ensime_2.8.1-SNAPSHOT-0.3.2/elisp/")
;(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; MINI HOWTO: 
;; Open .scala file. M-x ensime (once per project)

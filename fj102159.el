;; Personal mods

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'load-path "~/.emacs.d/scala")

(require 'scala-mode-auto)
(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(require 'textmate)
(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'peepopen)
(textmate-mode)

(defun maximize-frame ()
  (interactive)
  (set-frame-position (selected-frame) 0 0)
  (set-frame-size (selected-frame) 1000 1000))

(global-set-key (kbd "<M-S-return>") 'maximize-frame)
(maximize-frame)

;; Command is meta in OS X.
;; (setq ns-command-modifier (quote meta))

(color-theme-twilight)

(setq ruby-deep-indent-paren nil)
(setq ruby-deep-arglist nil)
(set-default-font "Menlo 14")
(setq ns-pop-up-frames nil)
(global-linum-mode 1)

;; Annoyances
(setq default-truncate-lines t)
(global-set-key [f12] 'toggle-truncate-lines)
(setq truncate-partial-width-windows nil)
(defun html-hook ()
  (local-set-key "\C-m" (lambda () (interactive) (insert "\n")))
  )
(setq sgml-mode-hook 'html-hook)

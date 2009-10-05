;; Personal mods

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'load-path "~/.emacs.d/scala")

(require 'scala-mode-auto)

;; Command is meta in OS X.
(setq ns-command-modifier (quote meta))

(color-theme-twilight)

(setq ruby-deep-indent-paren nil)
(setq ruby-deep-arglist nil)
(set-default-font "Consolas 12")
(global-linum-mode 1)


;; Personal mods

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(color-theme-twilight)

(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))
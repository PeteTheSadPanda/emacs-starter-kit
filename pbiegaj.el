(push "/usr/local/bin" exec-path)
;; no more backup files emacs, I got it
(setq make-backup-files nil)
;; set font type and size
(set-default-font "Monaco-9")
;; set new twilight theme
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-solarized")
(require 'color-theme-solarized)
(color-theme-solarized-dark)

;; rspec mode
(add-to-list 'load-path "~/.emacs.d/vendor/rspec-mode")
(require 'rspec-mode)
(add-to-list 'auto-mode-alist '("spec\\.rb$" . ruby-mode))

;; Take all the windows in the current frame and shift them over one.
;; ;;
;; ;; With 2 windows, effectively switches their positions.
;; ;;
;; ;; With 1 window, this is a no-op.
(defun rotate-windows ()
  (interactive)
  (let ((buffers (mapcar 'window-buffer (window-list))))
    (mapcar* 'set-window-buffer
             (window-list)
             (append (cdr buffers) (list (car buffers))))))

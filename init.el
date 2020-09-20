;; Themes
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tsdh-dark))
 '(package-selected-packages
   '(counsel-projectile counsel ag ivy projectile restart-emacs move-dup multiple-cursors haskell-mode elcord))
 '(sr-speedbar-default-width 40)
 '(sr-speedbar-max-width 40))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Packages
(require 'package)
(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("GNU ELPA"     . 0)
        ("MELPA Stable" . 15)
        ("MELPA"        . 10)))
(package-initialize)


;;Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-|") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
(define-key mc/keymap (kbd "<return>") nil)

;;Discord presence
(require 'elcord)
(elcord-mode)

;; Mover/duplicar lineas
(require 'move-dup)
(global-set-key (kbd "<M-down>") 'md-move-lines-down)
(global-set-key (kbd "<M-up>") 'md-move-lines-up)
(global-set-key (kbd "<M-S-down>") 'md-duplicate-down)
(global-set-key (kbd "<M-S-up>") 'md-duplicate-up)

;; Speedbar
(add-to-list 'load-path "~/.emacs.d/sr-speedbar")
(require 'sr-speedbar)
(global-set-key (kbd "C-b") 'sr-speedbar-toggle)
(setq sr-speedbar-default-width 40)
(setq sr-speedbar-max-width 40)


;; Resizing window
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Ivy mode
(ivy-mode 1)

;; Projectile (Counsel-projectile)
(require 'projectile)
(counsel-projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-p") 'counsel-projectile)

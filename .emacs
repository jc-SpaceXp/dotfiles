
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("f146cf0feba4fed38730de65e924e26140b470a4d503287e9ddcf7cca0b5b3f0" default)))
 '(global-visual-line-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Adding Package Manager - MELPA
(setq package-archives
'(("melpa" . "http://melpa.milkbox.net/packages/"))
)

;; Custom Themes Path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'sunburst t)		;; overwrites default-wombat theme


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;      General Modifications        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable Toolbar (icons) & Scroll bar
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Line Numbers 
(global-linum-mode 1)
;; Column Numbers in mini-buffer 
(setq column-number-mode t)
;; Tab Width
(setq default-tab-width 4)
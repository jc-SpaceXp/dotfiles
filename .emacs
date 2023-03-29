;; change home dir if necessary
(setq user-emacs-directory "/home/jamz/.emacs.d")
(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; Bootstrap "use-package"
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Load undo-tree
(use-package undo-tree
  :ensure t
  :after evil
  :diminish
  :config
    (evil-set-undo-system 'undo-tree)
    (global-undo-tree-mode 1)
)

;; Load EVIL-mode
(use-package evil
  :ensure t
  :config
    (evil-mode 1)
    (evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle) ;; Keep TAB to org-cycle, to cycle through headers and lists
)

;; Load org-mode
(use-package org
  :ensure t
  :config
    (define-key org-mode-map (kbd "C-c a") 'org-agenda)
    ;; Show overview when open
    (setq org-startup-folded t)
    (setq org-adapt-indentation t)
)

;; Load helm fuzzy-file-finder
(use-package helm
  :ensure t
  :init
    (require 'helm-config)
    (setq helm-split-window-in-side-p t
          helm-move-to-line-cycle-in-source t
    )
  :config
    (helm-mode 1)
    (helm-autoresize-mode 1) ;; Helm resizes according to the number of candidates
    (global-set-key (kbd "C-x b") 'helm-buffers-list) ;; List buffers ( Emacs way )
    (define-key evil-ex-map "b" 'helm-buffers-list) ;; List buffers ( Vim way )
    (global-set-key (kbd "C-x C-f") 'helm-find-files) ;; Finding files with Helm
    (global-set-key (kbd "M-x") 'helm-M-x)  ;; Improved M-x menu
    (global-set-key (kbd "C-s") 'helm-occur)  ;; Replaces the default isearch keybinding
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;      Colours & Themes             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Manually load theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load "~/.emacs.d/themes/doom-themes-base.el")
(load "~/.emacs.d/themes/doom-themes.el")
(load-theme 'doom-vibrant t)

;; If theme is doom-vibrant then edit some of these prefernces from doom-themes-base.el
;; code blocks
(custom-theme-set-faces 'user
  '(org-block-begin-line ((t (:extend t :background "#0E0F13" :foreground "#62686E"))))
)
(face-remap-add-relative 'org-block-begin-line '(:foreground comments :background "#0e0f13" :extend t))
(face-remap-add-relative 'org-block-end-line '(:inherit 'org-block-begin-line))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;      General Modifications        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable Toolbar (icons) & Scroll bar
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
;; Line Numbers 
(global-linum-mode 1)
;; Column Numbers in mini-buffer 
(setq column-number-mode t)
;; Tab Width
(setq default-tab-width 4)
;; Change yes or no ---> y or n
(fset 'yes-or-no-p 'y-or-n-p)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;      Auto-generated stuff         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("37046960cf667c5ab3b76235d35a5db4763c531e706502a9067fa78db5a775c0" default))
 '(org-agenda-files '("~/Documents/org_files/test/test.org"))
 '(package-selected-packages '(use-package undo-tree goto-chg))
 '(safe-local-variable-values '((linum-mode) (column-number-mode) (line-number-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-block-begin-line ((t (:extend t :background "#0E0F13" :foreground "#62686E")))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" default)))
 '(package-selected-packages
   (quote
    (ace-window dircmp airline-themes powerline org-evil helm-w3m helm-ag w3m evil-magit evil-org evil))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'powerline)
(powerline-default-theme)
(display-time-mode)

(require 'magit)

(require 'evil)
(evil-mode 1)
(require 'evil-magit)
(require 'powerline-evil)
(require 'airline-themes)
(load-theme 'airline-light)

(require 'helm)
(require 'helm-config)
(require 'helm-w3m)
(global-set-key (kbd "M-x") 'helm-M-x)

(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

(setq make-backup-files nil)

(setq evil-search-module 'evil-search)                                                                  
;; hide toolbar with icons
(tool-bar-mode -1)

;; w3m steup
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(setq w3m-default-display-inline-images t)
(setq w3m-use-cookies t)

;; enable SHIFT+arrow to switch to adjacent window
(windmove-default-keybindings)

(require 'dircmp)

(require 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

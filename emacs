(autoload 'php-mode "php-mode" "PHP editing mode." t)
(setq auto-mode-alist (cons '("\.php$" . php-mode) auto-mode-alist))
(setq inhibit-startup-message t)
(global-hl-line-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t (:weight bold)))))
(show-paren-mode)
(setq column-number-mode t)
(setq-default show-trailing-whitespace t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default indent-tabs-mode nil)
(setq-default electric-indent-mode nil)
(setq-default tab-width 8)
(setq c-default-style "bsd"
      c-basic-offset 4)

;; autoload mode for c/c++ according to file extension
(autoload 'c++-mode "cc-mode" "C++ Editing Mode" t)
(setq auto-mode-alist
      (append '(("\\.C\\'" . c++-mode)
                ("\\.cc\\'" . c++-mode)
                ("\\.cpp\\'" . c++-mode)
                ("\\.h\\'"  . c++-mode))
              auto-mode-alist))

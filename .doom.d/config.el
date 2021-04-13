;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Global keys
(global-set-key [f8] 'neotree-toggle)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "M-<down>") 'enlarge-window)
(global-set-key (kbd "M-<up>") 'shrink-window)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "João Pedro"
      user-mail-address "joaopedroaats@pm.me"

      ;;doom-theme 'rebecca
      doom-theme 'doom-palenight
      )


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.



;; -- Fonts
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two
(setq doom-font (font-spec :family "monospace" :size 16)
     doom-variable-pitch-font (font-spec :family "monospace" :size 16)
     doom-big-font (font-spec :family "monospace" :size 24))



;; TODO: fix icons haha
;; Neo theme icons with
;; https://github.com/domtronn/all-the-icons.el
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))


;; Nyan mode
;; (setq nyan-animate-nyancat t)
;; (nyan-mode)

;; Waka time
(global-wakatime-mode)

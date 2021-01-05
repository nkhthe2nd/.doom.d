;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
(setq
 projectile-project-search-path '("/home/nattholman/Dropbox/Programming/")
 )

(use-package pdf-view
  :hook (pdf-tools-enabled . pdf-view-midnight-minor-mode)
  :hook (pdf-tools-enabled . hid-mode-line-mode)
  :config
  (setq pdf-view-midnight-colors '("#ABB2BF" . "#282C35")))

(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
;;(require 'smtpmail)
(setq user-mail-address "nattholman@gmail.com"
      user-full-name  "Natt Holman"
      mu4e-get-mail-command "mbsync -c ~/mbsyncrc -a"
      mu4e-update-interval  300
      mu4e-main-buffer-hide-personal-addresses t
      message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      mu4e-sent-folder "/account-1/Sent"
      mu4e-drafts-folder "/account-1/Drafts"
      mu4e-trash-folder "/account-1/Trash"
      mu4e-maildir-shortcuts
      '(("/account-1/Inbox"      . ?i)
        ("/account-1/Sent Items" . ?s)
        ("/account-1/Drafts"     . ?d)
        ("/account-1/Trash"      . ?t)))

;;(require 'meghanada)
;;(add-hook 'java-mode-hook
          ;;(lambda ()
          ;;;; meghanada-mode on
          ;;(meghanada-mode t)
          ;;(flycheck-mode +1)
          ;;(setq c-basic-offset 2)
          ;;;; use code format
          ;;(add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))
;;(cond
 ;;((eq system-type 'linux)
  ;;setq meghanada-java-path (expand-file-name "bin/java" (getenv "JAVA_HOME"))))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Natt Holman"
      user-mail-address "nattholman@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/Org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

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

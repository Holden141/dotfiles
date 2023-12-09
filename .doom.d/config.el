;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Lebron James"
      user-mail-address "john@doe.com")
(setq doom-font (font-spec :family "Fira Code" :size 18 :weight 'light)
      doom-variable-pitch-font (font-spec :family "Roboto" :style "Regular" :size 14 :weight 'regular))
(add-hook 'org-mode-hook 'org-fragtog-mode)

;;====================================================================================
(after! org
  (setq org-log-done t)
  (setq org-log-into-drawer t)
  (setq org-agenda-files '("~/org/orgroam/agenda.org")
        org-agenda-files '"~/org/orgroam/ideas.org")
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))
  )
;;(setq doom-theme 'doom-ir-black)
;;(setq doom-theme 'doom-tomorrow-night)
;;'doom-challenger-deep

(setq doom-theme 'catppuccin
      fancy-splash-image "~/blackhole-lines.svg"
      display-line-numbers-type nil
      doom-modeline-enable-word-count t)
                                        ;(setq doom-theme 'doom-flatwhite)
;;(setq doom-theme 'spacemacs-light)
;;(setq doom-theme 'doom-xcode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ORG;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq org-directory "~/org"
      org-roam-directory "~/org/orgroam"
      org-roam-index-file "~/org/orgroam/index.org"
      org-journal-dir "~/org/journal/"
      org-journal-date-format "%A, %d-%m-%Y"
      org-journal-file-format "%Y-%m.org"
      org-journal-file-header "#+TITLE: %B-%Y\n#+category: journal \n \n"
      org-journal-date-prefix "* "
      org-journal-file-type 'monthly
      org-clock-sound "~/org/alarmsounds/crow-sfx.wav"
      org-hide-emphasis-markers t
      rmh-elfeed-org-files '("~/org/elfeed.org"))

(setq
 org-fancy-priorities-list '("[🐙🐉 ]" "[🐳]" "[🐡]") ;you can change these to emojis or whatever character
 org-priority-faces
 '((?A :foreground "#ff6c6b" :weight bold) ;the colors of the letters
   (?B :foreground "#98be65" :weight bold)
   (?C :foreground "#c678dd" :weight bold)))

;;org roam ui
(use-package! org-roam-ui
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))
;;citar
(setq! citar-bibliography '("~/org/references/bibliography.bib"))
(setq! citar-library-paths '("~/org/references/library")
       citar-notes-paths '("~/org/references/citar"))
(setq! org-noter-notes-search-path '("~/org/orgroam/noter"))

;;fetch papers whenever we open the elfeed interface
(add-hook! 'elfeed-search-mode-hook 'elfeed-update)

(setq org-agenda-custom-commands
      '(

        ("v" "My View"
         ((todo "STUDY"
                ((org-agenda-overriding-header "Study 🐉\n")))
          (todo "TODO"
                ((org-agenda-overriding-header "Practice makes Perfect 🎃 \n")))
          (agenda ""
                  ((org-agenda-block-separator 8411) ;change the seperator to any character nil to remove
                   (org-agenda-span 1)
                   (org-deadline-warning-days 1)
                   (org-agenda-day-face-function (lambda (date) 'org-agenda-date))
                   (org-agenda-format-date "%A %-e %B %Y")
                   (org-agenda-overriding-header "\nDaily agenda\n")))))
        ))

;; this controls the color of bold, italic, underline, verbatim, strikethrough
;; REMEMBER FOREGROUND IS THE COLOR OF THE WORDS AND BACKGROUND IS THE BACKGROUND
(setq org-emphasis-alist
      '(("*" (bold :slant italic :weight black )) ;; this make bold both italic and bold, but not color change
        ("/" (italic :foreground "green" )) ;; italic text, the text will be "dark salmon"
        ("_" (underline :foreground "red")) ;; underlined text, color is "cyan"
        ("=" (:foreground "cyan" )) ;; background of text is "snow1" and text is "deep slate blue"
        ("~" (:foreground "gold" ))
        ("+" (:strike-through nil :foreground "purple1" ))))


;;emmms player define sometime
;;
                                        ;====================LINUX ONLY
;;(setq delete-by-moving-to-trash t
                                        ;    trash-directory "~/.local/share/Trash/files/")
;;drag and drop
(setq-default org-download-image-dir "~/org/images")
(add-hook 'dired-mode-hook 'org-download-enable)
                                        ;(setq org-image-actual-width nil)
                                        ;
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (jupyter . t)))

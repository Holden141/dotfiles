;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a link to Doom's Module Index where all
;;      of our modules are listed, including what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom!
 :completion
 company           ; the ultimate code completion backend
 (vertico +icons)           ; the search engine of the future

 :ui
 deft              ; notational velocity for Emacs
 doom              ; what makes DOOM look the way it does
 (doom-dashboard +doom-dashboard-functions)   ; a nifty splash screen for Emacs
 (emoji +unicode)  ; 🙂
 hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
 indent-guides     ; highlighted indent columns
 ligatures         ; ligatures and symbols to make your code pretty again
 nav-flash         ; blink cursor line after big motions
 modeline          ; snazzy, Atom-inspired modeline, plus API
 ophints           ; highlight the region an operation acts on
 (popup +defaults +all)   ; tame sudden yet inevitable temporary windows
 ;;tabs              ; a tab bar for Emacs
 treemacs          ; a project drawer, like neotree but cooler
 unicode           ; extended unicode support for various languages
 (vc-gutter +pretty) ; vcs diff in the fringe
 vi-tilde-fringe   ; fringe tildes to mark beyond EOB
 workspaces        ; tab emulation, persistence & separate workspaces
 zen               ; distraction-free coding or writing

 :editor
 (evil +everywhere); come to the dark side, we have cookies
 file-templates    ; auto-snippets for empty files
 fold              ; (nigh) universal code folding
 (format +onsave)  ; automated prettiness
 multiple-cursors  ; editing in many places at once
 snippets          ; my elves. They type so I don't have to
 word-wrap         ; soft wrapping with language-aware indent

 :emacs
 (dired +icons)  ; making dired pretty [functional]
 electric          ; smarter, keyword-based electric-indent
 ibuffer         ; interactive buffer management
 undo              ; persistent, smarter undo for your inevitable mistakes

 :term
 vterm             ; the best terminal emulation in Emacs

 :checkers
 (syntax +childframe)              ; tasing you for every semicolon you forget
 (spell +flyspell) ; tasing you for misspelling mispelling
 ;;grammar           ; tasing grammar mistake every you make

 :tools
 biblio            ; Writes a PhD for you (citation needed)
 ;;debugger          ; FIXME stepping through code, to help you add bugs
 ;;direnv
 docker
 ;;editorconfig      ; let someone else argue about tabs vs spaces
 (eval +overlay)     ; run code, run (also, repls)
 ;;gist              ; interacting with github gists
 (lookup +docsets)              ; navigate your code and its documentation
 (lsp +pyright)             ; M-x vscode
 magit             ; a git porcelain for Emacs
 pdf               ; pdf enhancements
 ;;tmux              ; an API for interacting with tmux
 tree-sitter       ; syntax and parsing, sitting in a tree...

 :os
 tty               ; improve the terminal Emacs experience

 :lang
 data              ; config/data formats
 emacs-lisp        ; drown in parentheses
 ess               ; emacs speaks statistics
 (java +lsp)       ; the poster child for carpal tunnel syndrome
 javascript        ; all(hope(abandon(ye(who(enter(here))))))
 latex             ; writing papers in Emacs has never been so fun
 markdown          ; writing docs for people to ignore
 (org +roam2 +pandoc +jupyter +pretty +dragndrop +journal +noter)     ; organize your plain life in plain text
 plantuml          ; diagrams for confusing people more
 (python +conda +lsp)     ; beautiful is better than ugly
 sh                ; she sells {ba,z,fi}sh shells on the C xor
 json
 yaml

 :app
 calendar
 emms
 (rss +org)        ; emacs as an RSS reader

 :config
 ;;literate
 (default +bindings +smartparens))

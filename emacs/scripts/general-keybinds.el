
;;; Code:
  (use-package general
    :ensure t
    :config
    (general-evil-setup)
    
    ;; set up 'SPC' as the global leader key
    (general-create-definer char/leader-keys
      :states '(normal insert visual emacs)
      :keymaps 'override
      :prefix "SPC" ;; set leader
      :global-prefix "M-SPC") ;; access leader in insert mode
    
    (char/leader-keys
      "b"  '(:ignore t :wk "buffer")
      "bb" '(switch-to-buffer :wk "Switch buffer")
      "bk" '(kill-buffer :wk "Kill this buffer")
      "bn" '(next-buffer :wk "Next buffer")
      "bp" '(previous-buffer :wk "Previous buffer")
      "br" '(revert-buffer :wk "Reload buffer")
      "bm" '(buffer-menu :wk "Buffer menu"))

    (char/leader-keys
      "d" '(:ignore t wk "Dired")
      "dd" '(dired :wk "Open dired")
      "dj" '(dired-jump :wk "Dired jump to current")
      "dn" '(neotree-dir :wk "Open directory in neotree")
      "dp" '(peep-dired :wk "Peep-dired"))


    (char/leader-keys
      "!" '(:ignore t :wk "Flycheck")
      "!n" '(flycheck-next-error :wk "Next error")
      "!p" '(flycheck-previous-error :wk "Prev error")
      "!l" '(flycheck-list-errors :wk "List errors")
      "!S" '(flycheck-select-checker :wk "Select checker")
      "!e" '(flycheck-explain-error-at-point :wk "Explain error"))

    (char/leader-keys
      "p" '(projectile-command-map :wk "Projectile"))

    (char/leader-keys
      "SPC" '(counsel-M-x :wk "Counsel M-x")
      "TAB TAB" '(comment-line :wk "Comment lines"))

    (char/leader-keys
      "f"  '(:ignore t :wk "file")
      "ff" '(find-file :wk "Find file")
      "fc" '((lambda () (interactive) (find-file "~/.config/emacs/config.org")) :wk "Edit emacs config")
      "fr" '(counsel-recentf :wk "Find recent files"))

    (char/leader-keys
      "h"   '(:ignore t :wk "help")
      "hh"  '(help-for-help :wk "Help for help")
      "hf"  '(describe-function :wk "Describe function")
      "hx"  '(describe-function :wk "Describe command")
      "hv"  '(describe-variable :wk "Describe variable")
      "hk"  '(describe-key :wk "Describe key")
      "hc"  '(describe-key-briefly :wk "Describe key briefly")
      "ho"  '(describe-symbol :wk "Describe symbol")
      "hrr" '(reload-init-file :wk "Reload emacs config"))

    (char/leader-keys
      "m" '(:ignore t :wk "Org")
      "m a" '(org-agenda :wk "Org agenda")
      "m e" '(org-export-dispatch :wk "Org export dispatch")
      "m i" '(org-toggle-item :wk "Org toggle item")
      "m t" '(org-todo :wk "Org todo")
      "m B" '(org-babel-tangle :wk "Org babel tangle")
      "m T" '(org-todo-list :wk "Org todo list")
      ;; Tables
      "m b" '(:ignore t :wk "Tables")
      "m b -" '(org-table-insert-hline :wk "Insert hline in table")
      ;; Dates
      "m d" '(:ignore t :wk "Date/deadline")
      "m d t" '(org-time-stamp :wk "Org time stamp"))


    (char/leader-keys
      "e"  '(:ignore t :wk "Evaluate")    
      "eb" '(eval-buffer :wk "Evaluate elisp in buffer")
      "ed" '(eval-defun :wk "Evaluate defun containing or after point")
      "ee" '(eval-expression :wk "Evaluate an elisp expression")
      "el" '(eval-last-sexp :wk "Evaluate elisp expression before point")
      "er" '(eval-region :wk "Evaluate elisp in region")) 

    (char/leader-keys
      "t" '(:ignore t :wk "Toggle")
      "tl" '(display-line-numbers-mode :wk "Toggle line numbers")
      "tn" '(neotree-toggle :wk "Toggle neotree")
      "tt" '(vterm-toggle :wk "toggle vterm"))

    (char/leader-keys
      "w" '(:ignore t :wk "Windows")
      ;; Window splits
      "w q" '(evil-window-delete :wk "Close window")
      "w Q" '(delete-other-windows :wk "Delete other windows")
      "w n" '(evil-window-new :wk "New window")
      "w s" '(evil-window-split :wk "Horizontal split window")
      "w v" '(evil-window-vsplit :wk "Vertical split window")
      "w i" '((lambda () (interactive) (enlarge-window 70) (enlarge-window-horizontally 70)) :wk "Enlarge window")
      "w I" '(balance-windows :wk "Balance windows")
      ;; Window motions
      "w h" '(evil-window-left :wk "Window left")
      "w j" '(evil-window-down :wk "Window down")
      "w k" '(evil-window-up :wk "Window up")
      "w l" '(evil-window-right :wk "Window right")
      "w w" '(evil-window-next :wk "Goto next window")
      ;; Move Windows
      "w H" '(buf-move-left :wk "Buffer move left")
      "w J" '(buf-move-down :wk "Buffer move down")
      "w K" '(buf-move-up :wk "Buffer move up")
      "w L" '(buf-move-right :wk "Buffer move right"))
    )
(provide 'general-keybinds)
;;; general-keybinds.el ends here

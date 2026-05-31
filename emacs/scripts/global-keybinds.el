
;;; Code;

;; Zooming in/out
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

;; Follow markdown links
(global-set-key (kbd "C-c C-o") 'toc-org-follow-markdown-link)

(provide 'global-keybinds)

;;; global-keybinds.el ends here

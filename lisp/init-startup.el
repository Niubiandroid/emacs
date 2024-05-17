(setq inhibit-startup-screen t)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; 垃圾回收的阈值
(setq gc-cons-threshold most-positive-fixnum)

;;使用y/n来代替yes/no
(defalias 'yes-or-no-p 'y-or-n-p)


(provide 'init-startup)

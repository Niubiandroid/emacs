(load-theme 'modus-operandi t)

(defvar cn-fonts-list '("黑体" "STHeiti" "微软雅黑" "文泉译微米黑")
  "定义使用的中文字体候选列表.")

(defvar en-fonts-list '("Cascadia Code" "Courier New" "Monaco" "Ubuntu Mono")
  "定义使用的英文字体候选列表.")

(defvar emoji-fonts-list '("Apple Color Emoji" "Segoe UI Emoji" "Noto Color Emoji" "Symbola" "Symbol")
  "定义使用Emoji字体候选列表.")

;;;###autoload
(defun tenon--font-setup ()
  "Font setup."

  (interactive)
  (let* ((cf (tenon--available-font cn-fonts-list))
	     (ef (tenon--available-font en-fonts-list))
         (em (tenon--available-font emoji-fonts-list)))
    (when ef
      (dolist (face '(default fixed-pitch fixed-pitch-serif variable-pitch))
	    (set-face-attribute face nil :family ef)))
    (when em
      (dolist (charset `(unicode unicode-bmp ,(if (> emacs-major-version 27) 'emoji 'symbol)))
        (set-fontset-font t charset em nil 'prepend)))
    (when cf
      (dolist (charset '(kana han cjk-misc bopomofo))
	    (set-fontset-font t charset cf))
      (setq face-font-rescale-alist
	        (mapcar (lambda (item) (cons item 1.2)) `(,cf ,em))))))

;; 添加行号
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(provide 'init-ui)

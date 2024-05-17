(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(require 'init-startup)
(require 'init-const)
(require 'init-kbd)
(require 'init-elpa)
(require 'init-package)
(require 'init-ui)


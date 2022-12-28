(setq inhibit-startup-message t)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(load-theme 'zenburn t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(global-display-line-numbers-mode 2)

(setq electric-indent-mode -1);

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("elpa". "https://elpa.gnu.org/packages/")
			 ("org". "https://orgmode.org/elpa/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package rainbow-delimiters
  :config (rainbow-delimiters-mode))

(use-package ivy
  :ensure t
  :bind(("C-s" . swiper)
        :map ivy-minibuffer-map
	("TAB" . ivy-alt-done)
	("C-l" . ivy-alt-done)
	("C-j" . ivy-next-line)
	("C-k" . ivy-previus-line)
	:map ivy-switch-buffer-map
 	("C-k" . ivy-previus-line)
	("C-l" . ivy-done)
	("C-d" . ivy-swutch-buffer-kill)
	:map ivy-reverse-i-search-map
	("C-k" . ivy-previus-line)
	("C-d" . ivy-reverse-isearch-kill))
  :config
(ivy-mode 1))

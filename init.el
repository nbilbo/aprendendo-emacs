;; Remover mensagem de boas vindas padrão.
(setq inhibit-startup-message t)

;; Ocultar a barra de ferramentas.
(tool-bar-mode -1)

;; Ocultar a barra de menu.
(menu-bar-mode -1)

;; Ocultar a barra de rolagem.
(scroll-bar-mode -1)

;; Ocultar dicas.
(tooltip-mode -1)

;; Numeração de linhas.
(global-display-line-numbers-mode t)

;; Colunas na Mode line.
(column-number-mode t)

;; Destacar a linha.
;; (global-hl-line-mode t)

;; Alerta visual.
(setq visible-bell t)

;; Organizando os backup.


;; Tema Temporário.
(load-theme 'tango-dark t)
;; (load-theme 'adwaita)

;; Disabilitando o word wrap.
(setq-default truncate-lines t)

;; Definindo o cursor.
(setq-default cursor-type 'box)

;; Defininfo a fonte.
(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font Mono" )
(set-face-attribute 'default nil :height 150)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil) ; desabilitar inicio de ativação.

;; Melpa  - repositório
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize) ; iniciar pacotes.

;; Pacote para instalar outros pacotes.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package all-the-icons
  :ensure t)

(use-package neotree
  :ensure t
  :bind (("C-\\" . 'neotree-toggle))
  :config
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow))))

(use-package rebecca-theme
  :ensure t
  :config (load-theme 'rebecca t))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))

;; coisas do Melta.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("bbb13492a15c3258f29c21d251da1e62f1abb8bbd492386a673dcfab474186af" "b98ec4f494d915790c75439c02fc2f5ec4c0098e3965bd09b0aa0669225298ae" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" "4c8c013db75a02544abab5387812a0d3abb5eb8ce67f0f00d332f2e365c18b24" default))
 '(ispell-dictionary nil)
 '(package-selected-packages '(use-package cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq user-full-name "Pranav"
      user-mail-address "pwadhwa@ualberta.ca")

;;; make emacs transparent
(defvar window-transparency 85
  "The transparency level for the Emacs frame.")
(set-frame-parameter (selected-frame) 'alpha `(,window-transparency . ,window-transparency))
(add-to-list 'default-frame-alist `(alpha . (,window-transparency . ,window-transparency)))



;; font i use
(setq doom-font (font-spec :family "JetBrains Mono" :size 15 :weight 'regular))


(setq doom-theme 'doom-tokyo-night)
(setq org-directory "~/org/")

(setq display-line-numbers-type 'relative)


(setq explicit-shell-file-name "/bin/zsh")
(setq
 split-width-threshold 0
 split-height-threshold nil)

;; change garbage collector threshold
(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024))

;; title
(setq-default frame-title-format '("hey bro, just FYI, this file is called %b or something"))

;; Don't show line numbers in org mode
(add-hook 'org-mode-hook (lambda () (display-line-numbers-mode 0)))

;; lsp
(use-package lsp-mode
  :config
  (add-hook 'evil-insert-state-entry-hook 'lsp-diagnostics--disable)
  (add-hook 'evil-insert-state-exit-hook  'lsp-diagnostics--enable)
  (setq lsp-log-io nil
        lsp-keep-workspace-alive nil
        lsp-signature-render-documentation nil
        lsp-signature-function 'lsp-signature-posframe
        lsp-semantic-tokens-enable t
        lsp-idle-delay 0.9
        lsp-use-plists t
        lsp-headerline-breadcrumb-enable nil))

(use-package lsp-dart
  :after dart-mode
  :config
  (setq lsp-dart-flutter-widget-guides nil))

(use-package dart-mode
  :hook ((dart-mode . flutter-test-mode)
         (dart-mode . shackra/dart-doom-modeline-no-major-mode-icon))
  :init
  (defun shackra/dart-doom-modeline-no-major-mode-icon ()
    "Cambia doom-modeline para que no muestre el icono del modo major en Dart.

Ver https://github.com/emacs-lsp/lsp-dart/issues/61#issuecomment-692392701"
    (setq-local doom-modeline-major-mode-icon nil)))


;; associate .g4 files with antlr
(add-to-list 'auto-mode-alist '("\\.g4\\'" . antlr-mode))

;; set path and other enviornment variables
(exec-path-from-shell-copy-envs '("ANTLR_INS" "ANTLR_JAR" "CLASSPATH" "MLIR_INS" "MLIR_DIR"))
;;(when (daemonp)
;;(exec-path-from-shell-initialize))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; we want dired not not make always a new buffer if visiting a directory
;; but using only one dired buffer for all directories.
(defadvice dired-advertised-find-file (around dired-subst-directory activate)
  "Replace current buffer if file is a directory."
  (interactive)
  (let ((orig (current-buffer))
        (filename (dired-get-filename)))
    ad-do-it
    (when (and (file-directory-p filename)
               (not (eq (current-buffer) orig)))
      (kill-buffer orig))))

(eval-after-load "dired"
  ;; don't remove `other-window', the caller expects it to be there
  '(defun dired-up-directory (&optional other-window)
     "Run Dired on parent directory of current directory."
     (interactive "P")
     (let* ((dir (dired-current-directory))
            (orig (current-buffer))
            (up (file-name-directory (directory-file-name dir))))
       (or (dired-goto-file (directory-file-name dir))
           ;; Only try dired-goto-subdir if buffer has more than one dir.
           (and (cdr dired-subdir-alist)
                (dired-goto-subdir up))
           (progn
             (kill-buffer orig)
             (dired up)
             (dired-goto-file dir))))))
                             file))))

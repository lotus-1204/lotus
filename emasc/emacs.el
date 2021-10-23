;; trr

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq load-path (cons "/home/scinfo/tharada/.emacs.d/trr/" load-path))
(autoload 'trr "/home/scinfo/tharada/.emacs.d/trr/trr" nil t)

;; mew
(setq mew-prog-ssl-arg "fips=no\n")

;; 起動画面表示時間の短縮／削除
(setq inhibit-startup-message t)

;; (line-number-mode t)
;; 行番号表示
(require 'linum)
(global-linum-mode)

;; 列番号表示
(setq column-number-mode t)

;; バックアップファイルの生成を停止
(setq make-backup-files nil)

;; 自動保存ファイルの生成を停止
(setq auto-save-default nil)

;; 文字コードに utf-8 を使用
(prefer-coding-system 'utf-8)

;; スクロールバーを非表示
(scroll-bar-mode -1)

;; ツールバーを非表示
(tool-bar-mode -1)

;; ファイルの種類に応じて文字を色付けしたり，フォントを変更
(global-font-lock-mode t)

;; ファイル（バッファ）末尾においてカーソルを下に移動しても
;; 新しい行（空行）を追加しない
(setq next-line-add-newlines nil)

;; Ctr-h に Back Space を割当
(global-set-key "\C-h" 'delete-backward-char)


;; Hunspell (Spell Checker)
(setq ispell-program-name "hunspell")
(setq ispell-local-dictionary "en_US")

;; 現在ポイントがある関数名をモードラインに表示
(which-function-mode 1)

;; 対応する括弧をハイライト
(show-paren-mode 1)

;; リージョンのハイライト
(transient-mark-mode 1)

;; タイトルにフルパス表示
(setq frame-title-format "%f")

;;current directory 表示
(let ((ls (member 'mode-line-buffer-identification
                  mode-line-format)))
  (setcdr ls
    (cons '(:eval (concat " ("
            (abbreviate-file-name default-directory)
            ")"))
            (cdr ls))))



(put 'upcase-region 'disabled nil)

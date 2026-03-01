;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "cmcmsu-tcb"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("tcolorbox" "theorems" "skins" "breakable") ("varwidth" "")))
   (TeX-run-style-hooks
    "tcolorbox"
    "varwidth"))
 :latex)


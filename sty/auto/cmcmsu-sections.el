;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "cmcmsu-sections"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("totcount" "")))
   (TeX-run-style-hooks
    "totcount")
   (LaTeX-add-environments
    "cmcmsuTransitionFrame"))
 :latex)


;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "cmcmsu-fonts"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("paratype" "") ("newtxmath" "") ("stix2-type1" "") ("fontspec" "") ("unicode-math" "")))
   (TeX-run-style-hooks
    "paratype"
    "newtxmath"
    "stix2-type1"
    "fontspec"
    "unicode-math"))
 :latex)


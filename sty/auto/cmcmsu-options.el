;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "cmcmsu-options"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("kvoptions" "") ("iftex" "") ("etoolbox" "") ("xcolor" "") ("graphicx" "") ("tikz" "") ("hyperref" "") ("caption" "") ("translator" "")))
   (TeX-run-style-hooks
    "kvoptions"
    "iftex"
    "etoolbox"
    "xcolor"
    "graphicx"
    "tikz"
    "hyperref"
    "caption"
    "translator")
   (TeX-add-symbols
    '("cmcmsutr" 1)))
 :latex)


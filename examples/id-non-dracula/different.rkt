#lang racket
(require "fresh.rkt")
(define-syntax (macro stx)
  (with-syntax {[name (fresh)]}
    #'(begin-for-syntax
        (define different (quote-syntax name))
        (provide different))))
(macro)
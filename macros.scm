;; SCHEME IMPLEMENTATION SPECIFIC - "define-macro" is not standard Scheme, it a legacy Lisp syntax.
;; takes an expression of form `a op b` and turns it into the Scheme standard `op a b`
(define-macro (infix expr) ;; expr is passed in as the literal expression. doing `infix (+ a b) would NOT pass in the result of a + b, it would pass in `+ a b`.
    (define expr_pre (car expr)) ;; takes the first element
    (define expr_in (car (cdr expr))) ;; takes the second item in the list (technically the first element of the second element, since all lists are pairs in Scheme)
    (define expr_cdr (cdr expr)) ;; takes the second element (of the pair, NOT of the expression as a whole.)
    (set-car! expr expr_in) ;; sets the first element to what we got from the second item of the list
    (set-car! expr_cdr expr_pre) ;; sets the first element of the second element (so the second item in the list) to the first element
    (set-cdr! expr expr_cdr) ;; puts this modified second element back into the original expression
    expr ;; the final expression, so it is what is returned
)

(display (infix (1 + 2))) ;; `(infix (1 + 2))` evaluates to `(+ 1 2)`

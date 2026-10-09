;; recursive function to calculate factorial of n
(define (factorial n)
    (if (= n 0)
        1 ;; if true
        (* (factorial (- n 1)) n) ;; else
    )
)

;; iterative function to add 10 to n
(define (add_10 n)
    (do ((i 1 (+ i 1)) (res n)) ;; var initialisation and increment (for i)
        ((> i 10) res) ;; end condition and what to return
        (set! res (+ res 1)) ;; what to execute
    )
)

(display (factorial 5))

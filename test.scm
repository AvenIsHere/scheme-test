;; recursive function to calculate factorial of n
(define (factorial n)
    (if (= n 0)
        1
        (* (factorial (- n 1)) n)
    )
)

;; iterative function to add 10 to n
(define (add_10 n)
    (do ((i 1 (+ i 1)) (res n))
        ((> i 10) res)
        (set! res (+ res 1))
    )
)

(display (factorial 5))

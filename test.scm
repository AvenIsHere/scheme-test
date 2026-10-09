;; recursive function to calculate factorial of n
(define (factorial n)
    (if (= n 0) ;; checks if n is equal to 0
        1 ;; if true, return 1
        (* (factorial (- n 1)) n) ;; if not, return factorial of n-1 times n
    )
)

;; iterative function to add 10 to n
(define (add_10 n) ;; defines the function "add_10", which takes variable n.
                   ;; note that "n" can be of any type, since Scheme is dynamically typed. It will cause an error when adding 1 to res if n is anything other than a number, though. (since it is
                   ;; strongly typed)
    (do ((i 1 (+ i 1)) (res n)) ;; var initialisation and increment (set i to 1 and add 1 to i each time it loops, set res to n (no increment part for res))
        ((> i 10) res) ;; end condition and what to return (if i is greater than 10, end the loop and return res)
        (set! res (+ res 1)) ;; what to execute ("set!" changes the value of res here, like running `res = res + 1;` in C)
    )
)

(display (factorial 5)) ;; display prints the value to stdout

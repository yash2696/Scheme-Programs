(define (sum x)
    (cond ( (= x 0) 0)
    (else (+ x (sum (- x 1))))
    )
)

(define (sum-upto-each-term-of-list ls)
    (cond ( (null? ls) '())
    (else (cons (sum (car ls)) (sum-upto-each-term-of-list (cdr ls))))))


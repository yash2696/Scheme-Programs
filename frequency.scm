(define frequency
    (lambda (lst n)
        (cond ((null? lst) 0)
            ((= (car lst) n) (+ 1 (frequency (cdr lst) n)))
            (else (frequency (cdr lst) n))
            )))

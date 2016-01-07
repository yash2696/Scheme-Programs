(define smallest-of-list
    (lambda (ls)
        (cond ((null? ls) 'empty list)
            ((null? (cdr ls)) (car ls))
            (else (smallest (car ls) (smallest-of-list (cdr ls)))))))
            
(define smallest
    (lambda (a b)
        (if (>= a b)
         b
         a)))         

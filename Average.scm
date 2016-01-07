(define (sum lst)
        (cond ((null? lst) 0)
        (else (+ (car lst) (sum (cdr lst))))
        )
        )
        
(define (len lst)
    (cond ((null? lst) 0)
          (else (+ 1 (len (cdr lst))))))                             
              
(define (avg lst)
        (/ (sum lst) (len lst))
        )

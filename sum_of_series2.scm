(define sum
    (lambda (n)
        (cond ((= n 0) 0)
        (else (+ (sum1 n) (sum (- n 1)))))))
        
        
(define sum1
    (lambda (n)
        (cond ((= n 0) 0)
        (else (+ n (sum1 (- n 1)))))))

(define sum 
    (lambda (x n)
        (cond ((= n 0) 1)
        (else (+ (power x n) (sum x (- n 1)))))))
        
        
(define power 
    (lambda (x n)
        (cond ((= n 0) 1)
        (else (* x (power x (- n 1)))))))          

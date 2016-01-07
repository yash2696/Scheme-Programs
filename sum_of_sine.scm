(define factorial
    (lambda (n)
        (cond ((= n 0) 1)
        (else (* n (factorial (- n 1)))))))
        
(define sum1
    (lambda (x n count)
        (cond ((> count n) 0)
            (else (+ (/ (power x count) (factorial count)) (sum1 x n (+ count 4)))))))
            
(define power
    (lambda (x n)
        (cond ((= n 0) 1)
        (else (* x (power x (- n 1)))))))
        
(define sum
    (lambda (x n)
        (- (sum1 x n 1) (sum1 x n 3))))         

(define compare 
    (lambda (lst1 lst2)
       (if (and ((null? lst1) (null? lst2)))
            1
            (if (or (((null? lst1) (not (null? lst2))) ((null? lst2) (not (null? lst1)))))
                0
                (compare (cdr lst1) (cdr lst2))
                ))))
              

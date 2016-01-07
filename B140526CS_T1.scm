(define (delete_max lst)
	(cond ((null? lst) '())
		  ( ( not(eq? (car lst) k))
				(cons (car lst) (delete_max (cdr lst)))
	      )
		  (else ( delete_max (cdr lst)))
	)
)

(define k (maximum lst))

(define (maximum ls)
	(cond ( (null? ls) 0 )
		  (else ( max_no (car ls) (maximum (cdr ls))))
	)
)

(define (max_no a b)
	(cond ((> a b) a)
		  ((< a b) b)
	)
)

(delete_max '(45 75 34 75 27 97))

(define (senior_employee ls)
	(cond ((null? ls) "Error")
		((null? (cdr ls)) (list (caar ls) ()))
		(else (list (caar (sort-list (make-db ls))) (caadr (sort-list (make-db ls))))))) 


(define (get-age ls)
	(if (> 29 (caadr ls))
		(if (> 9 (cadadr ls))
		(+ (- 29 (caadr ls)) (* 30 (- 9 (cadadr ls))) (* 365 (- 2015 (car (cddadr ls)))))
		(+ (- 29 (caadr ls)) (* 30 (- (+ 12 9) (cadadr ls))) (* 365 (- 2014 (car (cddadr ls))))))
	(if (<= 9 (cadadr ls))
		(+ (- (+ 30 29) (caadr ls)) (* 30 (- (+ 12 8) (cadadr ls))) (* 365 (- 2014 (car (cddadr ls)))))
		(+ (- (+ 30 29) (caadr ls)) (* 30 (- 9 (cadadr ls))) (* 365 (- 2015 (car (cddadr ls))))))))


(define (sort-list ls)
	(cond ((null? ls) '())
		(else (cons (maximum ls (car ls)) (sort-list (remove-element ls (maximum ls (car ls)))))))) 

(define (make-db ls)
	(cond ((null? ls) '())
		
		(else (cons (list (caar ls) (get-age (car ls))) (make-db (cdr ls))))))

(define (maximum ls1 ls2)
	(cond ((null? ls1) ls2)
		((>= (cadar ls1) (cadr ls2)) (maximum (cdr ls1) (car ls1)))
		(else (maximum (cdr ls1) ls2))))

(define (remove-element ls1 ls2)
	(cond ((null? ls1) '())
		((= (caar ls1) (car ls2)) (remove-element (cdr ls1) ls2))
		(else (cons (car ls1) (remove-element (cdr ls1) ls2)))))



;(remove-element '((1 (12 12 1994)) (2 (5 3 1993))) '(1 (12 12 1994)))
;(maximum '((1 7000) (2 7578) (3 6786) (4 8896)) '(1 7000)

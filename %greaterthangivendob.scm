(define (main pdb dob)
	(cond ((null? pdb) 'error)
		(else (/ (* (elder-than-given-dob pdb dob) 100) (get-length-of-database pdb)))))
		
(define (elder-than-given-dob pdb dob)
	(cond ((null? pdb) 0)
			((> (get-year dob) (get-year (get-dob (get-first-record pdb)))) (+ 1 (elder-than-given-dob (get-rest-of-records pdb) dob)))
			((< (get-year dob) (get-year (get-dob (get-first-record pdb)))) (elder-than-given-dob (get-rest-of-records pdb) dob))
			(else 
				(cond ((> (get-month dob) (get-month (get-dob (get-first-record pdb))))
							(+ 1 (elder-than-given-dob (get-rest-of-records pdb) dob)))			
						((< (get-month dob) (get-month (get-dob (get-first-record pdb))))
							(elder-than-given-dob (get-rest-of-records pdb) dob))
						(else
							(cond ((> (get-day dob) (get-day (get-dob (get-first-record pdb))))
										(+ 1 (elder-than-given-dob (get-rest-of-records pdb) dob)))
									((< (get-day dob) (get-day (get-dob (get-first-record pdb))))
										(elder-than-given-dob (get-rest-of-records pdb) dob))
									(else (elder-than-given-dob (get-rest-of-records pdb) dob))))))))
									
(define (make-pdb . records)
	records)

(define (make-dob day month year)
	(list day month year))
	
(define (make-name fn ln)
	(list fn ln))
	
(define (get-name record)
	(car record))
	
(define (get-dob record)
	(cadr record))
	
(define (get-first-name name)
	(car name))
	
(define (get-last-name name)
	(cadr name))
	
(define (get-day date)
	(car date))
	
(define (get-month date)
	(cadr date))
	
(define (get-year date)
	(caddr date))
	
(define (get-first-record pdb)
	(car pdb))
	
(define (get-rest-of-records pdb)
	(cdr pdb))					

(define (get-length-of-database pdb)
	(cond ((null? pdb) 0)
		(else (+ 1 (get-length-of-database (get-rest-of-records pdb))))))	
	
;(main '((yash (02 06 1996)) (sachin (02 05 1996)) (piyush (17 07 1997)) (satender (05 05 1996)) (vikas (12 08 1996)) (vaibhav (10 11 1996)) (lakshya (12 04 1994))) '(17 07 1996))	

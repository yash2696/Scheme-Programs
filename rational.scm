(define (make-rat p q)
	(cons (list p) (list (list q))))

(define (get-nr rat)
	(caar rat))

(define (get-dr rat)
	(caadr rat))

(define (plus-rat rat1 rat2)
	(/ (+ (* (get-nr rat1) (get-dr rat2)) (* (get-nr rat2) (get-dr rat1))) (* (get-dr rat1) (get-dr rat2))))

(define (mul-rat rat1 rat2)
	(/ (* (get-nr rat1) (get-nr rat2)) (* (get-dr rat1) (get-dr rat2))))

(define (print-rat rat)
	(/ (get-nr rat) (get-dr rat)))

(define (gcd num1 num2)
	(if (>= num1 num2)
		(if (= num2 0)
			num1
			(gcd (- num1 num2) num2))
		(gcd num2 num1)))

(define (lcm num1 num2)
	(/ (* num1 num2) (gcd num1 num2)))

(define (equal-rat? rat1 rat2)
	(if (= (/ (* (get-nr rat1) (lcm (get-dr rat1) (get-dr rat2))) (get-dr rat1)) (/ (* (get-nr rat2) (lcm (get-dr rat1) (get-dr rat2))) (get-dr rat2)))

		#t
		#f))

(define (get-same-marks records)
	(cond ((null? records) '())
		((exist-dup? (first-rec records) (rest-of-record records))
			(cons (get-dup (first-rec records) records) (get-same-marks (remove (first-rec records) records))))
		(else (get-same-marks (rest-of-record records)))))

(define (first-rec records)
	(car records))

(define (rest-of-record records)
	(cdr records))

(define (exist-dup? record records)
	(cond ((null? records) #f)
		((equal-records? record (first-rec records)) #t)
		(else (exist-dup? record (rest-of-record records)))))

(define (equal-records? rec1 rec2)
	(if(equal-rat? (get-mark rec1) (get-mark rec2))
		#t
		#f))

(define (get-mark rec)
	(cadr rec))

(define (get-rollno rec)
	(car rec))

(define (get-dup record records)
	(cond ((null? records) '())
		((equal-records? record (first-rec records))
			(cons (get-rollno (first-rec records)) (get-dup record (rest-of-record records))))
		(else (get-dup record (rest-of-record records)))))

(define (remove record records)
	(cond ((null? records) '())
		((equal-records? record (first-rec records)) (remove record (rest-of-record records)))
		(else (cons (first-rec records) (remove record (rest-of-record records))))))

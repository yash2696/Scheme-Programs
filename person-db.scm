(define (get-youngest-person person-db)
	(cond ((empty? person-db) 'Error)
		((empty? (rest-of-db person-db)) (get-name (first-person person-db)))
		(else (get-name (youngest-person (rest-of-db person-db) (first-person person-db))))))

(define (youngest-person person-db person)
	(cond ((empty? person-db) person)
		((< (get-year person) (get-year (first-person person-db))) (youngest-person (rest-of-db person-db) (first-person person-db)))
		((> (get-year person) (get-year (first-person person-db))) (youngest-person (rest-of-db person-db) person))
		((< (get-month person) (get-month (first-person person-db))) (youngest-person (rest-of-db person-db) (first-person person-db)))
		((> (get-month person) (get-month (first-person person-db))) (youngest-person (rest-of-db person-db) person))
		((< (get-day person) (get-day (first-person person-db))) (youngest-person (rest-of-db person-db) (first-person person-db)))
		((> (get-day person) (get-day (first-person person-db))) (youngest-person (rest-of-db person-db) person))))

(define (empty? person-db)
	(if (null? person-db)
		#t
		#f))

(define (first-person person-db)
	(car person-db))

(define (rest-of-db person-db)
	(cdr person-db))

(define (get-name person)
	(car person))

(define (get-dob person)
	(cadr person))

(define (get-year person)
	(caddr (get-dob person)))

(define (get-month person)
	(cadr (get-dob person)))

(define (get-day person)
	(car person))

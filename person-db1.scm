(define (get-youngest-person person-db)
	(cond ((empty? person-db) "Error")
			((empty? (rest-of-db person-db)) (get-name (first-person person-db)))
			(else (get-name (sort person-db)))))

(define (sort person-db)
	(cond ((empty? person-db) '())
			((cons (get-youngest (first-person person-db) (second-person person-db)) (sort (rest-of-db person-db)))

(define (first-person person-db)
	(car person-db))

(define (second-person person-db)
	(cadr person-db))

(define (rest-of-db person-db)
	(cdr person-db))

(define (empty? person-db)
	(if(null? person-db)
		#t
		#f))

(define (get-dob person)
	(cadr person))

(define (get-year person)
	(caddr (get-dob person)))

(define (get-month person)
	(cadr (get-dob person)))

(define (get-date person)
	(car (get-dob person)))

(define (get-name person)
	(car person))

(define (get-youngest person1 person-db)
	(cond ((empty? person-db) person1)
			((< (get-year person1) (get-year (first-person (rest-of-db person)))) (get-youngest person1 (rest-of-db person-db)))
			((> (get-year person1) (get-year (first-person (rest-of-db person)))) (get-youngest (get-year (first-person (rest-of-db person))) (rest-of-db person-db)))
		((< (get-month person1) (get-month person2)) person1)
						((> (get-month person1) (get-month person2)) person2)
						((= (get-month person1) (get-month person2))
							(cond ((< (get-date person1) (get-date person2)) person1)
									((> (get-date person1) (get-date person2)) person2)
									((= (get-date person1) (get-date person2)) person2)))))))

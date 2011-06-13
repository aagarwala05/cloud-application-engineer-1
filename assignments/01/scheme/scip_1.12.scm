(define (pascal row column)
  (cond ((or (= row column)(= 1 column))1)
	(else (+ (pascal (- row 1)(- column 1))
		 (pascal (- row 1) column)))))
(define (f n)
 (if(< n 3)
    n)
    (if (> n 3)
      (+ (- n 1)
      (* 2 (- n 2))
      (* 3 (- n 3)))))
(f 4)

(RESTART 1)
 ;; recursive

;; iterative process - I am not sure how to do it. 

(define (f-recur n)
  (if (< n 3)
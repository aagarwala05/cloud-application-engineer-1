(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a ) b))))

(+ 4 5)


(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ 4 5)

;; These processes are recursive. 
;; Implement f(x) = x ^ 4 + 5 * x ^ 2 + 4

(define (bitfunc x)
  (+ (+ (expt x 4) (* 5 (expt x 2))) 4))


(bitfunc 4)



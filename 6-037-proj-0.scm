;; Implement f(x) = x ^ 4 + 5 * x ^ 2 + 4

(define (bitfunc x)
  (+ (+ (expt x 4) (* 5 (expt x 2))) 4))


(bitfunc 0)  ;; Should be 4
(bitfunc 1)  ;; Should be 10
(bitfunc 2)  ;; Should also be 40
(bitfunc -1) ;; Should be 10
(bitfunc 10) ;; Should be pretty big, and positive, 10504


;; Implement f(x) = x ^ 4 - 5 * x ^ 2 + 4

(define (bitfunc x)
  (+ (- (expt x 4) (* 5 (expt x 2))) 4))


(bitfunc 0)  ;; Should be 4
(bitfunc 1)  ;; Should be 0, or very close
(bitfunc 2)  ;; Should also be very close to 0
(bitfunc -1) ;; Should also also be very close to 0
(bitfunc 10) ;; Should be pretty big, and positive

(bitfunc 1.5)

(define (bitfunc-rect x1 x2)
  (* (bitfunc x1) (- x2 x1)))

;; Test cases:
(bitfunc-rect 0 1)   ;; Should be 4
(bitfunc-rect 0 0.5) ;; Should be 2
(bitfunc-rect 1.5 2) ;; Should be negative


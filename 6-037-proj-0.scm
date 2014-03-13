;; Implement f(x) = x ^ 4 - 5 * x ^ 2 + 4

(define (bitfunc x)
  (+ (- (expt x 4) (* 5 (expt x 2))) 4))


(bitfunc 0)  ;; Should be 4
(bitfunc 1)  ;; Should be 0, or very close
(bitfunc 2)  ;; Should also be very close to 0
(bitfunc -1) ;; Should also also be very close to 0
(bitfunc 10) ;; Should be pretty big, and positive

(bitfunc 1.5)

;;Problem 2: A rectangle under Bitdiddle's function

(define (bitfunc-rect x1 x2)
  (* (bitfunc x1) (- x2 x1)))

;; Test cases:
(bitfunc-rect 0 1)   ;; Should be 4
(bitfunc-rect 0 0.5) ;; Should be 2
(bitfunc-rect 1.5 2) ;; Should be negative

;; Problem 3: Integrating Bitdiddle's function
(define (bitfunc-integral-recur num-steps x1 x2)
    (if (= num-steps 1)
      (bitfunc-rect x1 x2)
      (+ (* (bitfunc x1) (/ (- x2 x1) num-steps)) 
         (bitfunc-integral-recur (- num-steps 1) (+ x1 (/ (- x2 x1) num-steps)) x2)
      )))

;; Test cases:
(bitfunc-integral-recur 3 1 4)

;;(define (bitfunc-integral-iter num-steps x1 x2)
;;    'your-code-here)
(define (bitfunc-integral-iter num-steps x1 x2) (helper 0 1 num-steps (/ (- x2 x1) num-steps) x1))

(define (helper area step done w x1)
  (if (> step done)
    area
    (helper (+ area (* w (bitfunc x1))) (+ step 1) done w (+ w x1))
    ))
(bitfunc-integral-iter 3 1 4)


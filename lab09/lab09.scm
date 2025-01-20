(define (over-or-under num1 num2) (cond ((< num1 num2) -1)
                                          ((= num1 num2) 0)
                                          ((> num1 num2) 1)))

(define (make-adder num) (lambda (inc) (+ inc num)))

(define (composed f g) (lambda (x) (f (g x))))

(define (repeat f n) (if (= n 1)
  (lambda (x) (f x))
  (lambda (x) ((composed (repeat f (- n 1)) f) x))))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) (let ((x (max a b)) (y (min a b)))
  (if (zero? (modulo x y))
    y
    (gcd y (modulo x y)))))

(define (ascending? s) (if (or (null? s) (null? (cdr s)))
    #t
    (and (ascending? (cdr s)) (<= (car s) (car (cdr s))))))

(define (my-filter pred s) (if (null? s)
    s
    (if (pred (car s))
        (append (list(car s)) (my-filter pred (cdr s)))
        (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) (if (null? lst1)
    lst2
    (if (null? lst2)
        lst1
        (append (list (car lst1) (car lst2)) (interleave (cdr lst1) (cdr lst2))))))

(define (no-repeats s) (if (null? s)
    s
    (append (list (car s)) (no-repeats (filter (lambda (x) (not (= x (car s)))) (cdr s))))))

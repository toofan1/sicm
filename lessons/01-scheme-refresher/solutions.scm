;; Solutions for exercises

(define (my-map f lst)
  (if (null? lst) '()
      (cons (f (car lst)) (my-map f (cdr lst)))))

(define (my-foldl f init lst)
  (if (null? lst) init
      (my-foldl f (f init (car lst)) (cdr lst))))

(define (newton f df guess tol max-iter)
  (let loop ((x guess) (i 0))
    (if (> i max-iter) (error "no convergence")
        (let ((x2 (- x (/ (f x) (df x)))))
          (if (< (abs (- x2 x)) tol) x2
              (loop x2 (+ i 1)))))))

;; Example usage:
;; (newton (lambda (x) (- (* x x) 2)) (lambda (x) (* 2 x)) 1.0 1e-8 100)

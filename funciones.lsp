(defun factorial (x)
    (if (= x 0)
        1
        (* x (factorial( - x 1))))
)
(defun fibo (n)
    (if(< n 2)
        n
        (+ (fibo(- n 1)) (fibo(- n 2))))
)

(defun recorre (lista)
    (format t "~A-> ~% " (car lista))
    (if lista
        (recorre (cdr lista))
        )
) 


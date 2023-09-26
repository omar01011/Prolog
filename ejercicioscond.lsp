(defun letras ()
  (format t "Ingresa una letra minúscula: ")
  (let ((letra (read)))
    (cond
      ((member letra '(a e i o u)) (format t "La letra a es una vocal." letra))
      ((member letra '(y)) (format t "La letra a es una semivocal." letra))
      (t (format t "La letra a es una consonante." letra)))))

(defun letras_when ()

    (format t "Ingresa una letra minúscula: ")
    (let ((letra (read)))

    (when (member letra '(a e i o u))
        (format t "La letra es minuscula. "letra))
    (when (member letra '(y))
        (format t "La letra es una semivocal. "letra))
    (when (not (member letra '(a e i o u y)))
        (format t "La letra es una consonante. "letra))
    )
)
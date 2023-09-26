(defvar *number-was-odd* nil)
(if (oddp 5)
    (progn (setf *number-was-odd* t)
       'odd-number)
    'even-number)

(when (oddp 5)
  (setf *number-is-odd* t)
  'odd-number)

(unless (oddp 4)
  (setf *number-is-odd* nil)
  'even-number)

(defvar *x* 20)
(cond
  ((= x 0) (print "x es igual a 0"))
  ((> x 0) (print "x es mayor que 0"))
  ((< x 0) (print "x es menor que 0"))
  (t (print "Esta es la acción predeterminada")))

(setq dia-de-la-semana 'martes)

(case dia-de-la-semana
    (lunes (print "Hoy es lunes."))
    (martes (print "Hoy es martes."))
    (miércoles (print "Hoy es miércoles."))
    (otherwise (print "Día desconocido.")))
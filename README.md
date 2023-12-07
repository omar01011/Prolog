## Árbol Genealógico

### Paterna

- Abuelo:
  - Simon

- Abuela:
  - Lupina

- Padres:
  - Omar
  - Javier
  - Hugo
  - Ruy

- Madres:
  - Elia
  - Norma
  - Yolanda
  - Silvia

### Mis primos (varones)

- Omar
- Nicolas
- Hugolihn
- Ruymario
- Yunuen
- Jorge
- German
- Simonhijo
- Rurik
- Abelito

### Mis primas

- Yatziri
- Yanire
- Aleyda

### Relaciones

- Padres:
  - Simon es padre de Omar, Javier, Hugo, Ruy, Elia, Norma, Yolanda
  - Lupina es madre de Omar, Hugo, Ruy, Javier, Elia, Norma, Yolanda
  - Elia es madre de Aleyda, Abelito, Rurik
  - Aleyda es madre de Carlos

### Reglas Lógicas

- Abuelo:
  - X es abuelo de Y si es padre de W y W es padre de Y.
  
- Abuelos:
  - X es abuelo de Y si X es padre de W y W es padre de Y, o si X es madre de W y W es madre de Y.
  
- Abuela:
  - X es abuela de Y si X es madre de W y W es madre de Y.
 

## Árbol 2

```prolog
% Definimos las relaciones
padre(elendil, isildur).
padre(elendil, anarion).
padre(isildur, valandil).
padre(anarion, meneldil).
padre(anarion, cilindrion).
padre(isildur, desconocido_hijo_isildur).
padre(isildur, aragorn). % Aragorn es el hijo de Isildur
padre(elrond, arwen). % Elrond es el padre de Arwen
madre(unknown, elendil).
madre(unknown, anarion).
madre(desconocida_esposa, valandil).
madre(desconocida, meneldil).
madre(desconocida, cilindrion).
madre(desconocido_hijo_isildur, aratan).
madre(desconocido_hio_isildur, anduril).

% Definimos las relaciones de pareja
pareja(elendil, unknown).
pareja(isildur, desconocida_esposa_isildur).
pareja(anarion, desconocida_esposa_anarion).
pareja(aragorn, arwen). % Aragorn se casa con Arwen
pareja(elrond, celebrian). % Elrond se casa con Celebrian

% Definimos reglas para determinar si alguien es padre o hijo
padre(X, Y) :- padre(X, Y).

madre(X, Y) :- madre(X, Y).

hijo(X, Y) :- padre(Y, X); madre(Y, X).

% Definimos reglas para determinar si alguien es pareja
pareja(X, Y) :- pareja(X, Y); pareja(Y, X).

% Definimos reglas para determinar si alguien es hermano(a)
hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y, not(X = unknown), not(Y = unknown).

% Definimos reglas para determinar si alguien es abuelo(a) o nieto(a)
abuelo(X, Y) :- padre(X, Z), padre(Z, Y); padre(X, Z), madre(Z, Y).
abuela(X, Y) :- madre(X, Z), padre(Z, Y); madre(X, Z), madre(Z, Y).
nieto(X, Y) :- abuelo(Y, X); abuela(Y, X).

% Definimos reglas para determinar si alguien es tío(a) o sobrino(a)
tio(X, Y) :- padre(Z, Y), hermano(Z, X); madre(Z, Y), hermano(Z, X).
sobrino(X, Y) :- tio(Y, X).


## Listas

```prolog
[Cabeza|Cola]=[1,2,3,4].
[a,b,c] = [X,Y,Z].



## Operaciones en Lisp

```lisp
>(quote (+ 2 3))
(+ 2 3)
>'(+ 2 3)
(+ 2 3)

>(setq 'a '(1 2 3 4))
(1 2 3 4)
>(car a)
1
>(cdr a)
(2 3 4)
>(cddr a)
(3 4)
>(cdddr a)
(4)

[4]>(setq b '((1 2 3 4 5) a b c))
((1 2 3 4 5) A B C)
Break 1 [7]>(caar b)
1
Break 1 [7]>(car b)
(1 2 3 4 5)
Break 1 [7]>(cdr b)
(A B C)
---------------------
; sacar el primero de cada lista

Break 1 [7]>(setq c '(1 2 3 4 (a b c) (d e f)))
(1 2 3 4 (A B C) (D E F))
Break 1 [7]>(car c)
1
Break 17 [23]>(caar (cddddr c))
A
Break 24 [30]>(caar(cddddr (cdr c)))
D

; Sacar el de enmedio

Break 32 [38]>(cadr(car(cddr(cdddr c))))
E
Break 34 [40]>(cadr(car(cddr(cddr c))))
B
Break 40 [46]>(car(cdr(cdr c)))
3




## Ejemplo 1

```lisp
(defparameter *datos* '((preal (Amlo)
                                (felipe)
                                (fox)
                                (peña))
                        (pnreal
                            (bob)
                            (ptricio)
                            (pantera rosa))
))



## Condicionales

```lisp
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


## Ejercicios Lisp

```lisp
(defun letras ()
  (format t "Ingresa una letra minúscula: ")
  (let ((letra (read)))
    (cond
      ((member letra '(a e i o u)) (format t "La letra a es una vocal. ~a" letra))
      ((member letra '(y)) (format t "La letra a es una semivocal. ~a" letra))
      (t (format t "La letra a es una consonante. ~a" letra)))))

(defun letras_when ()
  (format t "Ingresa una letra minúscula: ")
  (let ((letra (read)))
    (when (member letra '(a e i o u))
      (format t "La letra es minuscula. ~a" letra))
    (when (member letra '(y))
      (format t "La letra es una semivocal. ~a" letra))
    (when (not (member letra '(a e i o u y)))
      (format t "La letra es una consonante. ~a" letra)))))

## Funciones

```lisp
(defun factorial (x)
    (if (= x 0)
        1
        (* x (factorial (- x 1))))
)

(defun fibo (n)
    (if (< n 2)
        n
        (+ (fibo (- n 1)) (fibo (- n 2))))
)

(defun recorre (lista)
    (format t "~A-> ~% " (car lista))
    (if lista
        (recorre (cdr lista))
        )
)

## Funciones Lambda

```lisp
(defvar *calcular_area_cuadrado*
    (lambda (lado)
        (* lado lado))
)

(defvar *calcular_area_cubo*
    (lambda (altura)
        (let ((lado (read)))
            (* (funcall *calcular_area_cuadrado* lado) altura)))
)

(format t "ingresa la longitud de los lados: ")
(setq lado (read))
(format t "ingresa la longitud de la altura: ")
(setq altura (read))
(format t "El área del cuadrado es: ~A ~%" (funcall *calcular_area_cuadrado* lado))
(format t "El volumen del cubo es: ~A" (funcall *calcular_area_cubo* altura))


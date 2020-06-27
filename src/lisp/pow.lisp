(defun pow (x n)
  (cond
    ; initial condition
    (
     (= 1 n)
     x
    )

    ; even number
    (
     (= (rem n 2) 0)
     (pow (* x x) (/ n 2))
    )

    ; odd number
    (
     t
     (* x (pow (* x x) (/ (- n 1) 2)))
    )
  )
)

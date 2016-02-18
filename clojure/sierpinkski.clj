(defn sierpinkski [n]
  (dotimes [y 32]
    (dotimes [x 63]
      (if (< x 32)
        ; "1" for y < x "_" for y > x
        (if (>= y (+ (- x) 31)) (print "1") (print "_"))
        ; "1" for y > x "_" for y < x
        (if (>= (+ 31 y) x) (print "1") (print "_"))
        )
      )
    (println)))

(sierpinkski 0)
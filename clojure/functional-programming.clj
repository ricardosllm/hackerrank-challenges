; Hello World N Times
(fn [n] 
    (dotimes [_ n] (println "Hello World"))


; List Replication
(fn [num lst]
    (dotimes [x (count lst)] 
        (dotimes [_ num] (println (+ x 1)))))

; Jumping Bunnies
(defn gcd [a b] (if (zero? b) a (recur b (mod a b))))  ; greatest common divisor
(defn lcm [a b] (/ (* a b) (gcd a b)))                 ; lowest common multiple 

(let [n-s (read-line)
      j-s (read-line)
      j (map read-string (split j-s #"\s+"))]
      (println (reduce lcm j)))

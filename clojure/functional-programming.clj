; List Replication

(fn [num lst]
    (dotimes [x (count lst)] 
        (dotimes [_ num] (println (+ x 1)))))

; ----------------------------------------------

; Jumping Bunnies

(defn gcd [a b] (if (zero? b) a (recur b (mod a b))))  ; greatest common divisor
(defn lcm [a b] (/ (* a b) (gcd a b)))                 ; lowest common multiple 

(let [n-s (read-line)
      j-s (read-line)
      j (map read-string (split j-s #"\s+"))]
      (println (reduce lcm j)))
  
; ----------------------------------------------

; Rotate String

(defn rotate-word [w]
  (if (= 1 (count w))
    w
    (str (apply str (rest w)) (first w))))

(let [t (Integer/parseInt (read-line))]
  (dotimes [i t]
    (let [word (read-line)
          lngth (count word)]
      (loop [i lngth
             to-p word]
        (let [next-word (rotate-word to-p)]
          (print next-word)
          (print " ")
          (if (> i 1) (recur (- i 1) next-word))))
      (println))))
  
  ; ----------------------------------------------

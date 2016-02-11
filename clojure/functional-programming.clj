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
; Computing the GCD

(let [f (fn [a b] (if (zero? b) a (recur b (mod a b))))
      [m n] (map read-string (re-seq #"\d+" (read-line)))]
    (println (f m n)))

; ----------------------------------------------
; Fibonacci Numbers

(defn fibo [n]
  (cond
    (< n 1) 0
    (= n 1) 1
    :else (+ (fibo (- n 1)) (fibo (- n 2)))))

(let [input (Integer/parseInt (read-line))
      nth-fibo (- input 1)]
  (println (fibo nth-fibo)))

; ----------------------------------------------
; Pascal's Triangle

(defn factorial [n]
  (reduce * (range 1 (inc n))))

(defn pascal-value [r c] ; r! / (c! * (r-c)!)
  (let [x (/ (factorial r) (* (factorial c) (factorial (- r c))))]
    (cond
      (and (= 0 r) (= 1 c)) " "
      (= (mod x 1) 0) x
      :else " ")))

(let [input (Integer/parseInt (read-line))]
  (dotimes [i input]
    (dotimes [j input]
      (print (str (pascal-value i j) " ")))
    (println)))

; ----------------------------------------------
; String Mingling

(let [a (read-line)
      b (read-line)]
  (println (apply str (interleave a b))))

; ----------------------------------------------
; Filter Array

(fn [delim lst]
  (dotimes [i (count lst)]
    (let [x (nth lst i)]
      (if (< x delim) (println x)))))

; ----------------------------------------------
; Filter positions in a list

(fn [lst]
  (dotimes [i (count lst)]
    (if (odd? i) (println (nth lst i)))))

; ----------------------------------------------
; Array Of N Elements

(fn [n]
  (take n (range)))

; ----------------------------------------------
; Reverse a list

(fn [lst]
  (loop [l lst]
    (let [s    (count l)
          tail (last l)]
      (if tail (println tail))
      (if (> s 0) (recur (take (- s 1) l))))))

; ----------------------------------------------
; Sum of odd elements

(fn[lst]
  (reduce
    (fn [a b] (if (odd? b) (+ a b) a))
    lst))

; ----------------------------------------------
; List Length

(fn [lst]
  (let [result (atom 0)]
    (loop  [l lst
            r result]
      (let [remaining (rest l)]
        (swap! r inc)
        (if (empty? remaining)
          @r
          (recur remaining r))))))

; ----------------------------------------------
; Update List

(fn [lst]
  (dotimes [i (count lst)]
    (let [val (nth lst i)]
      (println (max val (- val))))))

; ----------------------------------------------
; Sierpinski triangles

(defn sierpinkski [n]
  (dotimes [y 31]
    (dotimes [x 62]
      (if (<= x 31)
        ; "1" for y < x "_" for y > x
        (if (>= y (+ (- x) 31)) (print "1") (print "_"))
        ; "1" for y > x "_" for y < x
        (if (>= (+ 31 y) x) (print "1") (print "_"))
        )
      )
    (println)))

(let [n (Integer/parseInt (read-line))] 
  (sierpinkski n))

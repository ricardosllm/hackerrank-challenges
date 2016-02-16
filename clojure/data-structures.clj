; ----------------------------------------------
; Arrays- DS

(defn str-blnk [s t]
  (str s " " t))

(let [n_t      (read-line)
      n        (Integer/parseInt n_t)
      arr_temp (read-line)
      arr_t    (split arr_temp #"\s+")
      arr      (map #(Integer/parseInt %) arr_t)]
  (println (reduce str-blnk (reverse (take n arr)))))

; ----------------------------------------------
; 2D Arrays- DS

(defn nth-hourglass [arr x y] ; size = 6
  (let [res (atom 0)]
    (loop [i x j 0]
      (let [line (take-last (- 6 y) (nth arr i))]
        (if (even? j)
          (swap! res + (reduce + (take 3 line)))
          (swap! res + (nth line 1))))
      (if (< i (+ x 2))
        (recur (+ i 1) (+ j 1))))
    @res))

(let [arr (for [arr_temp (range 6)]
            (map #(Integer/parseInt %) (split (read-line) #"\s+")))
      result (atom [])]
  (dotimes [i 4]
    (dotimes [j 4]
      (swap! result conj (nth-hourglass arr i j))))
  (println (apply max @result)))
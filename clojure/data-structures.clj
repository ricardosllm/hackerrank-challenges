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

; 1 1 1 0
; 0 1 0 0
; 1 1 1 0
; 0 0 2 4

; 1 1 1 0 0 0
; 0 1 0 0 0 0
; 1 1 1 0 0 0
; 0 0 2 4 4 0
; 0 0 0 2 0 0
; 0 0 1 2 4 0

(nth (nth arr 2) 0)

(defn nth-hourglass [arr x y] ; size = 6
  (let [res (atom 0)]
    (loop [i x]
      (swap! res + (reduce + (take 3 (take-last (- 6 y) (nth arr i)))))
      (println @res)
      (if (< i (+ x 2))
        (recur (+ i 1))))
    @res))


(let [arr (for [arr_temp (range 6)]
            (map #(Integer/parseInt %) (split (read-line) #"\s+")))]
  (println (nth-hourglass arr 0 0)))

; TODO: (max (collection of all hourglass permutations where:
;                                                            x (0...4)
;                                                            y (0...4)
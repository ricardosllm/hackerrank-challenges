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

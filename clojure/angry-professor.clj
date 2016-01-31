(use '[clojure.string :only (split triml)])

(let [t_t (read-line)
      t (Integer/parseInt t_t)]
     (loop [a0 t]
           (when (> a0 0)
                 (let [n_temp (read-line)
                       n_t (split n_temp #"\s+")
                       n (Integer/parseInt (n_t 0))
                       k (Integer/parseInt (n_t 1))]
                      (def n-s n)
                      (def c-k k))
                 (let [a_temp (read-line)
                       a_t (split a_temp #"\s+")
                       a (sort (map #(Integer/parseInt %) a_t))]
                      (def a-s a))
                 (def acc (atom 0))
                 (loop [i 0]
                       (when (< i n-s)
                             (let [res (nth a-s i)]
                                  (if (<= res 0)
                                    (swap! acc inc))
                                  (recur (+ i 1)))))
                 (if (< @acc c-k)
                   (println "YES")
                   (println "NO"))
                 (recur (- a0 1)))))

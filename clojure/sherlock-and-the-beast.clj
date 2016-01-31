(use '[clojure.string :only (split triml)])

(defprotocol Multiply (* [this n]))

(extend String Multiply {:* (fn [this n] (apply str (repeat n this)))})

(let [t_t (read-line)
      t (Integer/parseInt t_t)]

     (loop [a0 t]
           (when (> a0 0)

                 (let [n_t (read-line)
                       n (Integer/parseInt n_t)
                       z (atom n)]

                      (while (not= (mod @z 3) 0)
                             (swap! z - 5))
                      (if (< @z 0)
                        (println "-1")
                        (println (str (* "5" @z) (* "3" (- n @z))))))
                 (recur (- a0 1)))))

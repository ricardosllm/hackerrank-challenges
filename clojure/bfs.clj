(use 'clojure.string)

(let [t_t (read-line)
      t   (Integer/parseInt t_t)]
  (loop [a0 0]
    (def xy (atom {}))

    ;{:n-nodes n
    ; :m-edges m
    ; :starting-node s
    ; :xy [[1,2] [2,3]]
    ; :adj {:1 [2,3]
    ;       :2 []}}

    (when (< a0 t)
      (let [n_temp (read-line)
            n_t    (split n_temp #"\s+")
            n      (Integer/parseInt (n_t 0))
            m      (Integer/parseInt (n_t 1))]

        (loop [i 0]
          (when (< i m)
            (let [res (read-line)]

              ; build adjencency list

              (swap! xy assoc (keyword (str i)) (if (= (first res) i) (last res) "none"))
              (swap! xy assoc :n n)
              (swap! xy assoc :m m)

              (recur (+ i 1))))))
      (let [s (read-line)]
        (swap! xy assoc :s s)
        )
      (println "@xy: " @xy)

      (println "...")

      (recur (+ a0 1)))))

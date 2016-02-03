; Hello World N Times
(fn [n] 
    (dotimes [_ n] (println "Hello World"))


; List Replication
(fn[num lst]
    (dotimes [x (count lst)] 
        (dotimes [_ num] (println (+ x 1)))))


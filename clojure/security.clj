; ----------------------------------------------
; Security - functions

(let [x (Integer/parseInt (read-line))]
  (println (mod x 11)))

; ----------------------------------------------
; Security - function - ii

(let [x (Integer/parseInt (read-line))]
  (println (* x x)))

; ----------------------------------------------
; Security - Bijective Functions

(let [n (Integer/parseInt (read-line))
      m_t (read-line)
      m (split m_t #"\s+")]
  (println (if (= (count (set m)) (count m)) "YES" "NO")))

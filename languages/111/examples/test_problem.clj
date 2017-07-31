(loop [num (read-line)]
   (if (= num "42") '() (do (println num) (recur (read-line))))
)

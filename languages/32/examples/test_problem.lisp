(loop 
	for line = (read-line *standard-input* nil nil) 
	while (not (equal line "42")) 
	do (format t "~A~%" line))

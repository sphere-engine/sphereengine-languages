(loop
 (let ((a (read)))
   (when (= a 42) (return))
   (princ (format nil "~D~%" a))))

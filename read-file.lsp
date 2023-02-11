(let ((in (open "customers-100.csv")))
   (when in
      (loop for line = (read-line in nil)
      while line do (format t "~a~%" line))
   )
)

;https://media.githubusercontent.com/media/datablist/sample-csv-files/main/files/customers/customers-100.csv

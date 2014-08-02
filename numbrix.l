(let ((grid))
  (defun smallGrid()
    (setq grid (make-array '(3 3) :initial-contents
                           '((1 0 3) (0 0 0) (7 0 9))))
    3
    )
  
  (defun largeGrid()
    (setq grid (make-array '(8 8) :initial-contents
                           '((45 44 39 38 23 22 19 18) 
                             (46 0 0 0 0 0 0 17) 
                             (47 0 0 0 0 0 0 16)
                             (48 0 0 0 0 0 0 15)
                             (63 0 0 0 0 0 0 14)
                             (64 0 0 0 0 0 0 3)
                             (59 0 0 0 0 0 0 4)
                             (58 57 56 55 8 7 6 5)
                             )))    
    8
    )
  
  (defun autoGrid()
    (princ "enter grid number: ")
    (let ((choice))
      
      (setf choice (read))
      (cond 
       ((= choice 1) 
        (setq grid (make-array '(5 5) :initial-contents
                               '((1 0 0 0 9) (0 0 6 0 0) (0 18 0 14 0) (0 0 16 0 0) (21 0 0 0 25))))
        (return-from autogrid 5)
        )
       ((= choice 2)
        (setq grid (make-array '(6 6) :initial-contents
                           '((3 4 9 10 15 16) (2 0 0 0 0 17) (1 0 0 0 0 18) (36 0 0 0 0 19) (31 0 0 0 0 24) (30 29 28 27 26 25))))
        (return-from autogrid    6)

        )
       
       ((= choice 3)
        (setq grid (make-array '(7 7) :initial-contents
                           '((1 0 9 0 25 0 49) (0 3 0 11 0 27 0) (5 0 0 0 0 0 47) (0 15 0 0 0 29 0) (17 0 0 0 0 0 45) (0 35 0 33 0 31 0) (37 0 39 0 41 0 43))))
        (return-from autogrid 7)

        )
       
       ((= choice 4)
        (setq grid (make-array '(8 8) :initial-contents
                           '((54 0 52 0 0 37 0 35) (0 0 0 0 0 0 0 0) (58 0 48 0 0 41 0 31) (0 0 0 46 0 0 0 0) (0 0 0 0 16 0 0 0) (63 0 5 0 0 18 0 26) (0 0 0 0 0 0 0 0) (1 0 11 0 0 20 0 22))))
        (return-from autogrid 8)

        )
       
       ((= choice 5)
        (setq grid (make-array '(5 5) :initial-contents
                           '((1 0 0 0 9) (0 0 0 0 0) (0 0 21 0 0) (0 0 0 0 0) (25 0 0 0 15)))) ;; (63 0 5 0 0 18 0 26) (0 0 0 0 0 0 0 0) (1 0 11 0 0 20 0 22))))
        (return-from autogrid 5)

        )
       
       ((= choice 6)
        (setq grid (make-array '(5 5) :initial-contents
                           '((25 0 0 0 13) (0 0 0 0 0) (0 0 1 0 0) (0 0 0 0 0) (21 0 0 0 17)))) ;; (63 0 5 0 0 18 0 26) (0 0 0 0 0 0 0 0) (1 0 11 0 0 20 0 22))))
        (return-from autogrid 5)

        )
       
       ((= choice 7)
        (setq grid (make-array '(7 7) :initial-contents
                           '((49 0 0 0 0 0 31) (0 9 0 3 0 0 0) (0 0 0 0 0 0 0) (0 0 0 5 0 0 0) (0 0 0 0 17 0 0) (0 0 0 0 0 25 0) (0 0 0 0 0 0 37)))) ;; (1 0 11 0 0 20 0 22))))
        (return-from autogrid 7)

        )
       
       ((= choice 8)
        (setq grid (make-array '(8 8) :initial-contents
                           '((1 0 0 0 0 0 0 64) (0 7 0 0 0 0 38 0) (0 0 0 14 19 0 0 0) (0 0 0 0 0 0 0 0) (0 0 0 0 0 0 0 0) (0 0 0 29 30 0 0 0) (0 48 0 0 0 0 43 0) (50 0 0 0 0 0 0 57))))
        (return-from autogrid 8)

        )
       
       ((= choice 9)
        (setq grid (make-array '(9 9) :initial-contents
                           '((0 0 0 0 0 0 0 0 0) (0 75 0 9 0 3 0 43 0) (0 0 79 0 1 0 15 0 0) (0 77 0 0 0 0 0 41 0) (0 0 21 0 0 0 17 0 0) (0 67 0 0 0 0 0 39 0) (0 0 31 0 29 0 27 0 0) (0 63 0 33 0 35 0 37 0) (0 0 0 0 0 0 0 0 0))))
        (return-from autogrid 9)

        )
       
       ((= choice 10)
        (setq grid (make-array '(9 9) :initial-contents
                               '((73 0 81 0 11 0 13 0 45) (0 0 0 0 0 0 0 0 0) (0 0 0 0 1 0 0 0 0) (0 0 0 0 0 0 0 0 0) (0 68 0 0 19 0 0 40 0) (0 0 0 0 0 0 26 0 0) (0 0 0 0 29 0 0 0 0) (0 0 32 0 0 0 36 0 0) (61 0 0 0 0 0 0 0 53))))
        (return-from autogrid 9)
 
        )
       
       ((= choice 11)
        (setq grid (make-array '(10 10) :initial-contents
                               '((81 0 79 0 0 0 0 74 0 72) (0 0 0 15 0 0 18 0 0 0) (0 0 0 0 0 0 0 0 0 0) (0 0 0 0 0 0 0 0 0 0) (0 0 91 0 1 0 0 0 0 64) (0 0 32 0 0 9 0 0 0 0) (0 0 0 0 0 0 25 0 0 0) (0 0 0 0 0 0 0 47 0 0) (0 0 0 0 0 0 0 0 53 0) (98 0 38 0 0 0 0 0 0 59))))
        (return-from autogrid 10)
 
       
        )
       
       ((= choice 12)
        (setq grid (make-array '(10 10) :initial-contents
                               '((68 0 0 0 0 0 0 0 0 77) 
                                 (0 50 0 0 0 0 0 0 0 0) 
                                 (0 0 20 0 0 0 0 29 0 0) 
                                 (0 0 0 22 0 0 0 0 0 0)
                                 (0 0 0 0 10 0 0 0 0 0)
                                 (0 0 0 0 1 6 0 0 0 0) 
                                 (0 0 0 0 0 0 34 0 0 0) 
                                 (0 0 15 0 0 0 0 36 0 0)
                                 (0 0 0 0 0 0 0 0 86 0)
                                 (59 0 0 0 0 0 0 0 0 100))))
        (return-from autogrid 10)
 
               
        )
       
       ((= choice 13)
        (setq grid (make-array '(11 11) :initial-contents
                               '((1 4 5 6 7 8 21 22 41 42 43) 
                                 (2 0 0 0 0 0 0 0 0 0 44) 
                                 (119 0 13 0 0 0 0 0 0 0 47) 
                                 (120 0 0 0 104 0 0 0 0 0 48)
                                 (121 0 0 0 0 0 0 0 0 0 51)
                                 (112 0 0 0 0 0 0 0 0 0 52) 
                                 (111 0 0 0 0 0 0 0 35 0 55) 
                                 (96 0 0 99 0 83 0 0 0 0 56)
                                 (95 0 0 0 0 0 0 0 0 0 57)
                                 (92 0 0 0 0 0 0 0 0 0 58)
                                 (91 90 89 78 77 76 75 74 73 60 59))))
        (return-from autogrid 11)
        
        )
       ((= choice 14)
        (setq grid (make-array '(13 13) :initial-contents
                               '((17 0 19 0 21 0 45 0 55 0 97 0 161) 
                                 (0 5 0 7 0 43 0 53 0 95 0 163 0) 
                                 (15 0 0 0 0 0 0 0 0 0 0 0 159)
                                 (0 3 0 0 0 0 0 0 0 0 0 165 0)
                                 (13 0 0 0 0 0 0 0 0 0 0 0 157) 
                                 (0 29 0 0 0 0 0 61 0 0 0 167 0)
                                 (31 0 0 0 0 0 0 0 0 0 0 0 115)
                                 (0 69 0 0 0 0 0 0 0 0 0 169 0) 
                                 (71 0 0 0 0 0 0 0 0 0 0 0 153) 
                                 (0 73 0 0 0 0 0 85 0 0 0 149 0)
                                 (117 0 0 0 0 0 0 0 0 0 0 0 147)
                                 (0 121 0 125 0 129 0 133 0 137 0 145 0)
                                 (119 0 123 0 127 0 131 0 135 0 141 0 143))))
        (return-from autogrid 13)
        
        )
       ((= choice 15)
        (setq grid (make-array '(15 15) :initial-contents
                               '((41 0 0 0 0 0 0 0 0 0 0 0 0 0 211) 
                                 (0 43 0 0 0 0 0 0 0 0 0 0 0 77 0) 
                                 (0 0 197 0 0 0 0 0 0 0 0 0 0 0 0) 
                                 (0 0 0 89 0 0 0 0 0 0 0 0 0 0 0) 
                                 (0 0 0 0 159 0 0 0 0 0 143 0 0 0 0) 
                                 (0 0 0 0 0 119 0 0 0 0 0 0 0 0 0) 
                                 (0 0 0 0 0 0 137 0 0 0 0 0 0 0 0) 
                                 (0 0 0 0 0 0 0 135 0 0 0 0 0 0 0) 
                                 (0 0 0 0 0 0 123 0 125 0 0 0 0 0 0) 
                                 (0 0 0 0 0 0 0 0 0 149 0 0 0 0 0) 
                                 (0 0 0 0 97 0 0 0 0 0 103 0 0 0 0) 
                                 (0 0 0 0 0 0 0 0 0 0 0 179 0 0 0) 
                                 (0 0 0 0 0 0 0 0 0 0 0 0 65 0 0) 
                                 (0 0 0 0 0 0 0 0 0 0 0 0 0 1 0) 
                                 (27 0 0 0 0 0 0 0 0 0 0 0 0 0 225))))
        (return-from autogrid 15)

        )
       ((= choice 16)
        (setq grid (make-array '(9 9) :initial-contents
                               '((43 0 41 0 39 0 33 0 27)
                                 (0 0 0 0 0 0 0 0 0) 
                                 (51 0 0 0 0 0 0 0 25) 
                                 (0 0 0 0 0 0 0 0 0)
                                 (53 0 0 0 0 0 0 0 23)
                                 (0 0 0 0 0 0 0 0 0) 
                                 (55 0 0 0 0 0 0 0 21)
                                 (0 0 0 0 0 0 0 0 0)
                                 (57 0 81 0 71 0 7 0 9))))
        (return-from autogrid 9)

        )
       ((= choice 17)
        (setq grid (make-array '(9 9) :initial-contents
                               '((1 0 3 0 19 0 23 0 25)
                                 (0 0 0 0 0 0 0 0 0) 
                                 (7 0 0 0 0 0 0 0 27) 
                                 (0 0 0 0 0 0 0 0 0)
                                 (75 0 0 0 0 0 0 0 35)
                                 (0 0 0 0 0 0 0 0 0) 
                                 (81 0 0 0 0 0 0 0 45)
                                 (0 0 0 0 0 0 0 0 0)
                                 (61 0 59 0 57 0 49 0 47))))
        (return-from autogrid 9)

        )
       (t (format t "Invalid input"))
       )

      
    (setq grid (make-array '(9 9) :initial-contents
                           '((0 0 0 0 0 0 0 0 0) (0 75 0 9 0 3 0 43 0) (0 0 79 0 1 0 15 0 0) (0 77 0 0 0 0 0 41 0) (0 0 21 0 0 0 17 0 0) (0 67 0 0 0 0 0 39 0) (0 0 31 0 29 0 27 0 0) (0 63 0 33 0 35 0 37 0) (0 0 0 0 0 0 0 0 0))))
    9
    )
    )
  
  
  (defun stdList (size)
    "Creates a boolean array which tells if a particular value existed in the initial grid or not"
    (let ((lst) (temp))
      (setq temp (* size size))
      (setq temp (+ temp 1))
      
      (setq lst (make-array temp))
      
      (let ((i 0) (j 0))
        (loop
          (setq j 0)
          (loop
            (cond ((= 0 (aref grid i j)) ())
                  (t (setf (aref lst (aref grid i j)) T)))
            (setq j (+ j 1))
            (when (= size j) (return)))
          
          (setq i (+ i 1))
          (when (= size i) (return lst)))
        )
      
      )
    )
  
  (defun printgrid (present &optional (dim 0))
    "prints the present state of numbrix grid"
    (let ((dash 1) (temp))
      
      (cond ((= dim 0) (setf dim (array-dimension present 0))))
      
      (terpri) (princ "    ")
      ;;(dotimes (num1 dim) (princ num1) (cond ((< num1 10) (princ "   ")) (t (princ "  ")))) 
      (terpri)
      (princ " +") (dotimes (num1 dim) (dotimes (num2 dash) (princ "---")) (princ "+"))
      
      (dotimes (r dim) (terpri) 
        ;;(princ r)
        (cond ((< r 10) (princ " ")))
        (dotimes (c dim) 
          ;;          (setf temp (aref present r c))
          
          
          (cond ((aref present r c) (setf temp (aref present r c)))
                (t (setf temp 0)))
          (cond ((< temp 100) (princ "| "))
                (t (princ "|")))
          (cond ((= temp 0) (princ " "))
                (t (princ temp)))
          (cond ((< temp 10) (princ " "))))
        (princ "|") 
        (terpri) (princ " +") 
        (dotimes (num1 dim) 
          (dotimes (num2 dash) 
            (princ "---")) 
          (format t "+")))
      
      
      )
    )
  
  (defun finalcheck (final &optional r1 c1)
    "Checks if the numbers form the number snake or not"
    ;; Find start position
    (let ((dim) (max_val 0) (temp 1) (disp))
      (setf dim (array-dimension final 0))
      (setf max_val (* dim dim))
      (setq disp (make-array (list dim dim)))
      
      (cond ((numberp r1) ())
            (t (setq r1 -1)
               (loop
                 (incf r1)
                 (setq c1 0)
                 (loop
                   (cond ((= (aref final r1 c1) 1) (return)))
                   (incf c1)
                   (when (= c1 dim) (return)))
                 (when (= 1 (aref final r1 c1)) (return))
                 )))
      
      
      (loop
        (setf (aref disp r1 c1) temp)
        (incf temp)
        
        (printgrid disp dim)
        (cond ((/= r1 0)         (cond ((= temp (aref final (- r1 1) c1)) (decf r1)))))
        (cond ((/= r1 (- dim 1)) (cond ((= temp (aref final (+ r1 1) c1)) (incf r1)))))
        (cond ((/= c1 0)         (cond ((= temp (aref final r1 (- c1 1))) (decf c1)))))
        (cond ((/= c1 (- dim 1)) (cond ((= temp (aref final r1 (+ c1 1))) (incf c1)))))
        
        (when (or (= (aref final r1 c1) max_val) (< (aref final r1 c1) temp)) (return)))
      
      (cond ((< (aref final r1 c1) temp) (terpri)(princ "Break in chain encountered. The answer is incorrect."))
            (t (setf (aref disp r1 c1) temp) (printgrid disp dim) (terpri)(princ "Congratulations! You solved the puzzle correctly!")))
      )
    )
  
  (defun gameplay (lst)
    "Main game-play takes place here"
    (let ((dupgrid) (blanks 0) (r) (c) (val) (dim) (ch 'y) (max_val) (r1) (c1) (check ))
      (setf dim (array-dimension grid 0))
      
      (setf max_val (* dim dim))
      (setq dupgrid (make-array (list dim dim)))  
      
      (let ((i 0) (j 0) (temp))
        (loop
          (setq j 0)
          (loop
            (setq temp (aref grid i j))
            (setf (aref dupgrid i j) temp)
            (incf j)
            (when (= dim j) (return)))
          
          (incf i)
          (when (= dim i) (return)))
        )
      
      
      ;; Find number of missing numbers
      
      (dotimes (num1 dim) (dotimes (num2 dim) (cond ((= 0 (aref dupgrid num1 num2)) (incf blanks)))))
      
      
      (decf dim)
      
      (printgrid dupgrid)
      (loop
        
        (terpri)(princ "Enter your move:")
        (setq r (- (read) 1))
        (setq c (- (read) 1))
        
        
        (setq val (read))
        
        (cond ((> r dim) (terpri)(princ "ROW value exceeds the number of available rows"))
              ((> c dim) (terpri)(princ "COLUMN value exceeds the number of available columns"))
              ((> val max_val) (terpri)(princ "Provided value exceeds upper limit of puzzle"))
              (t 
               (cond ((= (aref dupgrid (- dim r) c) 0) 
                      (cond ((aref lst val) (terpri)(princ "Value corresponds to an initial puzzle cell value."))
                            (t (decf blanks) (setf (aref dupgrid (- dim r) c) val) (cond ((= val 1) (setq c1 c) (setq r1 (- dim r)))))))
                     ((aref lst val) (terpri)(princ "Number corresponds to an initial puzzle cell value."))
                     ((aref lst (aref dupgrid (- dim r) c)) (terpri)(princ "Cell corresponds to initial member of puzzle"))
                     (t (terpri)(princ "You have already assigned a value to this cell. Do you wish to replace it? (y/n) ") 
                        (loop
                          (setq ch (read))
                          (cond ((eq ch 'y) (setf (aref dupgrid (- dim r) c) val))
                                ((eq ch 'n) (setf ch 'y))
                                (t (terpri)(princ "Invalid input! Enter again: ")))
                          (when (eq ch 'y) (return)))
                        
                        ))
               ))
        
        (printgrid dupgrid)
        
        (cond ((= blanks 0) (terpri) (princ "All cells are filled. ")
               (loop
                 (terpri)(princ "Do you wish to change value of any cell (y/n)?")
                 (setq ch (read))
                 (cond ((eq ch 'y) (setf check nil))
                       ((eq ch 'n) (setf ch 'y) (setf check t))
                       (t (terpri)(princ "Invalid input! Enter again: ")))
                 (when (eq ch 'y) (return)))))
        (when (and (= blanks 0) check) (return)))
      
      (finalcheck dupgrid r1 c1)
      
      )
    )
  
  ;--------------------------------------------------------------------------------------------------------------
  ;
  ; ...........................................Mainplay Handler and Autoplay Code................................
  ;
  ;--------------------------------------------------------------------------------------------------------------
  
  (let ((size) (lst) (choice))
    
    (defun play()
      (loop
        (format t "~%Menu:~%1. Small Grid (3x3) ~%2. Larger Grid (8x8)~%")
        (loop
          (setf choice (read))
          (cond 
           ((= choice 1) (setq size (smallGrid)))
           ((= choice 2) (setq size (largeGrid)))
           (t (format t "Invalid input. Enter choice again: "))
           )
          (when (or (= choice 2) (= choice 1)) (return t)))
        
        (setq lst (stdList size))
        
        (gameplay lst)
        
        
        ))
    
    (let ((pos) (ends) (dim) (x) (y) (temp1) (temp2) (dupgrid) (size) (dupends) (i) (j) (list1) (list2) (list3) (list4) (posval) (changes))
      
      ;------------------------------------------------------------------------------------------------------------------------
      ;.............................................................TREE.......................................................
      ;------------------------------------------------------------------------------------------------------------------------
      
      (defun depthfirstsearch(depth r c rd cd val dir)
        (let ((check nil))
          (cond ((= depth 0) 
                 (cond ((and (> r 0) (/= dir 1))         (cond ((and (= (- r 1) rd) (= c cd)) 
                                                                (setf check T)
                                                                ))))
                 
                 (cond ((and (< r (- size 1)) (/= dir 2)) (cond ((and (= (+ r 1) rd) (= c cd))
                                                                 (setf check T)
                                                                 ))))
                 
                 (cond ((and (> c 0) (/= dir 3))          (cond ((and (= (- c 1) cd) (= r rd))
                                                                 (setf check T)
                                                                 ))))
                 
                 (cond ((and (< c (- size 1)) (/= dir 4)) (cond ((and (= (+ c 1) cd) (= r rd))
                                                                 (setf check T)
                                                                 ))))
                 
                 (cond (check (return-from depthfirstsearch (list (list (list r c val)))))
                       (t          
                        (return-from depthfirstsearch nil)))
                 
                 )
                
                
                (t 
                 
                 (let ((up) (down) (left) (right) (paths) (temp) (ret))
                   
                   (setq paths (list r c val))
                   (incf val)
                   (cond ((and (> r 0) (/= dir 1))          (cond ((= (aref dupgrid (- r 1) c) 0) 
                                                                   (setf up (depthfirstsearch (- depth 1) (- r 1) c rd cd val 2))
                                                                   (setq check T)
                                                                   ))))
                   
                   (cond ((and (< r (- size 1)) (/= dir 2)) (cond ((= (aref dupgrid (+ r 1) c) 0)
                                                                   (setf down (depthfirstsearch (- depth 1) (+ r 1) c rd cd val 1))
                                                                   (setq check T)
                                                                   ))))
                   
                   (cond ((and (> c 0) (/= dir 3))          (cond ((= (aref dupgrid r (- c 1)) 0)
                                                                   (setf left (depthfirstsearch (- depth 1) r (- c 1) rd cd val 4))
                                                                   (setq check T)
                                                                   ))))
                   
                   (cond ((and (< c (- size 1)) (/= dir 4)) (cond ((= (aref dupgrid r (+ c 1)) 0)
                                                                   (setf right (depthfirstsearch (- depth 1) r (+ c 1) rd cd val 3))
                                                                   (setq check T)
                                                                   ))))
                   
                   (cond (up (setq temp up)
                             (setq up nil)
                             
                             (while temp
                               
                               (setf up (append (list (cons paths (car temp))) up))
                               (setq temp (cdr temp))                               
                               )
                             
                             (cond (ret 
                                    (setq temp up)
                                    (while temp
                                      (setq ret (cons (car temp) ret))
                                      (setq temp (cdr temp))
                                      )
                                    )
                                   (t (setq ret up)))
                             
                             ))
                   
                   (cond (down 
                          
                          (setq temp down)
                          (setq down nil)
                          
                          (while temp
                            (setf down (append (list (cons paths (car temp))) down))
                            (setq temp (cdr temp))
                            
                            )
                          
                          (cond (ret 
                                 (setq temp down)
                                 (while temp 
                                   (setq ret (cons (car temp) ret))
                                   (setq temp (cdr temp))
                                   )
                                 )
                                (t (setq ret down)))
                          
                          ))
                   
                   (cond (left 
                          
                          (setq temp left)
                          (setq left nil)
                          
                          (while temp
                            
                            (setf left (append (list (cons paths (car temp))) left))
                            (setq temp (cdr temp))
                            
                            )
                          
                          (cond (ret 
                                 (setq temp left) 
                                 (while temp 
                                   (setq ret (cons (car temp) ret))
                                   (setq temp (cdr temp))
                                   )
                                 )
                                (t (setq ret left)))
                          
                          ))
                   
                   (cond (right 
                          (setq temp right)
                          (setq right nil)
                          
                          (while temp
                            (setf right (append (list (cons paths (car temp))) right))
                            (setq temp (cdr temp))
                            )
                          
                          (cond (ret
                                 (setq temp right)
                                 (while temp
                                   (setq ret (cons (car temp) ret))
                                   (setq temp (cdr temp))
                                   )
                                 )
                                (t (setq ret right)))
                          ))
                   
                   (cond (check (return-from depthfirstsearch ret))
                         (t (return-from depthfirstsearch nil)))
                   
                   )
                 
                 )
                )
          ))
      
      ;------------------------------------------------------------------------------------------------------------------------
      
      
      (defun onlysnake()
        "looks for single openings for the snake"
        
        (setq temp1 (car list1))
        
        (while list1
          (setq list1 (cdr list1))
          
          (setq i (aref pos temp1 0))
          (setq j (aref pos temp1 1))
          
          (cond 
           ((and (= temp1 1) (equal (aref pos 2 0) nil))                       (setf temp2 2))
           ((and (= temp1 (* size size)) (equal (aref pos (- temp1 1) 0) nil)) (setf temp2 (- temp1 1)))
           ((and (= temp1 1) (aref pos 2 0))                                   (setf temp2 0))
           ((and (= temp1 (* size size)) (aref pos (- temp1 1) 0))             (setf temp2 0))
           ((equal (aref pos (- temp1 1) 0) nil)                               (setf temp2 (- temp1 1)))
           ((equal (aref pos (+ temp1 1) 0) nil)                               (setf temp2 (+ temp1 1)))
           (t                                                                  (setq temp2 0)))
          
          (cond ((> temp2 0) 
                 
                 ;;Find blank and fill value in dupgrid
                 
                 (cond ((> i 0)          (cond ((= (aref dupgrid (- i 1) j) 0) 
                                                (setf (aref dupgrid (- i 1) j) temp2)
                                                (setf (aref posval (- i 1) j) nil)
                                                
                                                (setf (aref pos temp2 0) (- i 1))
                                                (setf (aref pos temp2 1) j)
                                                (setf (aref pos temp2 2) nil)
                                                ))))
                 
                 (cond ((< i (- size 1)) (cond ((= (aref dupgrid (+ i 1) j) 0) 
                                                (setf (aref dupgrid (+ i 1) j) temp2)
                                                (setf (aref posval (+ i 1) j) nil)
                                                
                                                (setf (aref pos temp2 0) (+ i 1))
                                                (setf (aref pos temp2 1) j)
                                                (setf (aref pos temp2 2) nil)
                                                ))))
                 
                 (cond ((> j 0)          (cond ((= (aref dupgrid i (- j 1)) 0) 
                                                (setf (aref dupgrid i (- j 1)) temp2)
                                                (setf (aref posval i (- j 1)) nil)
                                                
                                                (setf (aref pos temp2 0) i)
                                                (setf (aref pos temp2 1) (- j 1))
                                                (setf (aref pos temp2 2) nil)
                                                ))))
                 
                 (cond ((< j (- size 1)) (cond ((= (aref dupgrid i (+ j 1)) 0) 
                                                (setf (aref dupgrid i (+ j 1)) temp2)
                                                (setf (aref posval i (+ j 1)) nil)
                                                
                                                (setf (aref pos temp2 0) i)
                                                (setf (aref pos temp2 1) (+ j 1))
                                                (setf (aref pos temp2 2) nil)
                                                ))))
                 
                 ;;update ends and dupends
                 
                 (setf ends (cons temp2 ends))
                 (setf ends (sort ends #'<))
                 (setf dupends (cons temp2 dupends))
                 (setf dupends (sort dupends #'<))
                 
                 ;;update lists1-4 according to surroundings of temp2
                 
                 (setq i (aref pos temp2 0))
                 (setq j (aref pos temp2 1))
                 (setq x 0)
                 
                 (cond ((> i 0)          (cond ((= (aref dupgrid (- i 1) j) 0) 
                                                (incf x))
                                               (t (setf y (aref dupgrid (- i 1) j))
                                                  (cond ((find y list1) (setq list1 (remove y list1)))
                                                        ((find y list2) (setq list2 (remove y list2)) (setq list1 (cons y list1)) (setf list1 (sort list1 #'<)))
                                                        ((find y list3) (setq list3 (remove y list3)) (setq list2 (cons y list2)) (setf list2 (sort list2 #'<)))
                                                        ((find y list4) (setq list4 (remove y list4)) (setq list3 (cons y list3)) (setf list3 (sort list3 #'<)))
                                                        )))))
                 
                 (cond ((< i (- size 1)) (cond ((= (aref dupgrid (+ i 1) j) 0) 
                                                (incf x))
                                               (t (setf y (aref dupgrid (+ i 1) j))
                                                  (cond ((find y list1) (setq list1 (remove y list1)))
                                                        ((find y list2) (setq list2 (remove y list2)) (setq list1 (cons y list1)) (setf list1 (sort list1 #'<)))
                                                        ((find y list3) (setq list3 (remove y list3)) (setq list2 (cons y list2)) (setf list2 (sort list2 #'<)))
                                                        ((find y list4) (setq list4 (remove y list4)) (setq list3 (cons y list3)) (setf list3 (sort list3 #'<)))
                                                        )))))
                 
                 (cond ((> j 0)          (cond ((= (aref dupgrid i (- j 1)) 0) 
                                                (incf x))
                                               (t (setf y (aref dupgrid i (- j 1)))
                                                  (cond ((find y list1) (setq list1 (remove y list1)))
                                                        ((find y list2) (setq list2 (remove y list2)) (setq list1 (cons y list1)) (setf list1 (sort list1 #'<)))
                                                        ((find y list3) (setq list3 (remove y list3)) (setq list2 (cons y list2)) (setf list2 (sort list2 #'<)))
                                                        ((find y list4) (setq list4 (remove y list4)) (setq list3 (cons y list3)) (setf list3 (sort list3 #'<)))
                                                        )))))
                 
                 (cond ((< j (- size 1)) (cond ((= (aref dupgrid i (+ j 1)) 0) 
                                                (incf x))
                                               (t (setf y (aref dupgrid i (+ j 1)))
                                                  (cond ((find y list1) (setq list1 (remove y list1)))
                                                        ((find y list2) (setq list2 (remove y list2)) (setq list1 (cons y list1)) (setf list1 (sort list1 #'<)))
                                                        ((find y list3) (setq list3 (remove y list3)) (setq list2 (cons y list2)) (setf list2 (sort list2 #'<)))
                                                        ((find y list4) (setq list4 (remove y list4)) (setq list3 (cons y list3)) (setf list3 (sort list3 #'<)))
                                                        )))))
                 
                 
                 (cond ((= x 1) (setf list1 (cons temp2 list1)))
                       ((= x 2) (setf list2 (cons temp2 list2)))
                       ((= x 3) (setf list3 (cons temp2 list3)))
                       ((= x 4) (setf list4 (cons temp2 list4))))
                 
                 (setf list1 (sort list1 #'<))
                 (setf list2 (sort list2 #'<))
                 (setf list3 (sort list3 #'<))
                 (setf list4 (sort list4 #'<))
                 
                 ))
          
          
          (setq temp1 (car list1))
          
          )
        
        )
      
      (defun updatelists()
        (let ((temp) (r) (c) (val) (iter) (count) (v))
          
          (cond ((= (list-length changes) (* size size)) (setf changes nil)))
          (setq iter changes)
          (while iter
            
            (setf count 0)
            (setf temp (car iter))
            (setf r (nth 0 temp))
            (setf c (nth 1 temp))
            (setf val (nth 2 temp))
            
            
            (cond ((> r 0)          (cond ((= (aref dupgrid (- r 1) c) 0) 
                                           (incf count))
                                          (t (setq v (list (- r 1) c (aref dupgrid (- r 1) c)))
                                             (cond ((not (find v changes :test #'equal))
                                                    (setf changes (cons v changes))
                                                    (setf iter (cons v iter)))
                                                   )))))
            
            (cond ((< r (- size 1)) (cond ((= (aref dupgrid (+ r 1) c) 0) 
                                           (incf count))
                                          (t (setq v (list (+ r 1) c (aref dupgrid (+ r 1) c)))
                                             (cond ((not (find v changes :test #'equal))
                                                    (setf changes (cons v changes))
                                                    (setf iter (cons v iter)))
                                                   )))))
            
            (cond ((> c 0)          (cond ((= (aref dupgrid r (- c 1)) 0) 
                                           (incf count))
                                          (t (setq v (list r (- c 1) (aref dupgrid r (- c 1))))
                                             (cond ((not (find v changes :test #'equal))
                                                    (setf changes (cons v changes))
                                                    (setf iter (cons v iter)))
                                                   )))))
            
            
            (cond ((< c (- size 1)) (cond ((= (aref dupgrid r (+ c 1)) 0) 
                                           (incf count))
                                          (t (setq v (list r (+ c 1) (aref dupgrid r (+ c 1))))
                                             (cond ((not (find v changes :test #'equal))
                                                    (setf changes (cons v changes))
                                                    (setf iter (cons v iter)))
                                                   )))))
            
            
            (setf list1 (remove-duplicates list1 :test #'equal))
            (setf list2 (remove-duplicates list2 :test #'equal))
            (setf list3 (remove-duplicates list3 :test #'equal))
            (setf list4 (remove-duplicates list4 :test #'equal))
            
            (cond ((= count 1) (setf list1 (cons val list1)) 
                   (setf list2 (remove val list2 :test #'equal))
                   (setf list3 (remove val list3 :test #'equal))
                   (setf list4 (remove val list4 :test #'equal)))
                  
                  ((= count 2) (setf list2 (cons val list2))
                   (setf list3 (remove val list3 :test #'equal))
                   (setf list4 (remove val list4 :test #'equal)))
                  
                  ((= count 3) (setf list3 (cons val list3))
                   (setf list4 (remove val list4 :test #'equal)))
                  
                  ((= count 4) (setf list4 (cons val list4))))
            
            (setf list1 (remove-duplicates list1 :test #'equal))
            (setf list2 (remove-duplicates list2 :test #'equal))
            (setf list3 (remove-duplicates list3 :test #'equal))
            (setf list4 (remove-duplicates list4 :test #'equal))
            
            (setf iter (remove temp iter : test #'equal))
            
            )
          
          (setf list1 (sort list1 #'<))
          (setf list2 (sort list2 #'<))
          (setf list3 (sort list3 #'<))
          (setf list4 (sort list4 #'<))
          
          )
        )
      
      
      (defun updatepos()
        (let ((iter) (temp))
          (dotimes (num (* size size))
            (cond ((equal (aref pos num 0) nil) 
                   (setq iter (aref pos num 2))
                   (while iter 
                     (setf temp (car iter))
                     (cond ((/= (aref dupgrid (nth 0 temp) (nth 1 temp)) 0) (setf (aref pos num 2) (remove (list (nth 0 temp) (nth 1 temp)) (aref pos num 2) :test #'equal))))
                     (setf iter (cdr iter))
                     )
                   (cond((= (list-length (aref pos num 2)) 1) 
                         (setf temp (car (aref pos num 2)))
                         (setf (aref pos num 2) nil)
                         (setf (aref dupgrid (nth 0 temp) (nth 1 temp)) num)
                         (setf changes (cons temp changes))
                         (setf num 0)
                         ))
                   )
                  )
            
            )
          )
        
        (cond (changes (updatelists)))
        )
      
      (defun onlyval()
        "looks for the nodes which have only 1 possible value"
        (let ((temp) (update T) (gridupdate))
          
          
          
          (while update
            (setq update nil)
            (setq gridupdate T)
            
            (dotimes (num1 size)
              (dotimes (num2 size)
                (setf temp (aref posval num1 num2))
                
                (cond ((equal temp nil) (setq update nil))
                      (temp
                       (cond ((= (list-length temp) 1) 
                              (setf temp (car temp))
                              (setf (aref dupgrid num1 num2) temp)
                              
                              (setf changes (cons (list num1 num2 temp) changes))
                              
                              (setf (aref pos temp 0) num1)
                              (setf (aref pos temp 1) num2)
                              (setf (aref pos temp 2) nil)
                              
                              (setf ends (cons temp ends))
                              (setf dupends (cons temp dupends))
                              (setq update T)
                              )
                             (t 
                              (while temp
                                (cond ((aref pos (car temp) 0) (setf (aref posval num1 num2) (remove (car temp) (aref posval num1 num2) :test #'equal))))
                                (setf temp (cdr temp))
                                )
                              (setf temp (aref posval num1 num2))
                              (cond ((= (list-length temp) 1) 
                                     (setf temp (car temp))
                                     (setf (aref dupgrid num1 num2) temp)
                                     
                                     (setf changes (cons (list num1 num2 temp) changes))
                                     
                                     (setf (aref pos temp 0) num1)
                                     (setf (aref pos temp 1) num2)
                                     (setf (aref pos temp 2) nil)
                                     
                                     (setf ends (cons temp ends))
                                     (setf dupends (cons temp dupends))
                                     
                                     (setq update T)
                                     )
                                    )
                              
                              )
                             )
                       )
                      )
                )
              )
            
            )
          
          ;;;          (terpri)(terpri)
          ;;;          (print "posval")
          ;;;          (dotimes (num1 size)
          ;;;            (dotimes (num2 size)
          ;;;              (princ (aref posval num1 num2)) (format t "~T")
          ;;;              
          ;;;              )(terpri))
          
          (cond (gridupdate (updatelists) (onlysnake)))
          )
        )
      
      (defun onlypath()
        "looks for single PATHS between intermediate ends"
        
        (let ((paths) (r) (c) (val) (temp) (update))
          
          (setq x (car dupends))
          (setq y 0)
          
          (let ((truth T))
            (cond ((= (list-length dupends) 1) (setf truth nil)))
            (loop
              (cond ((= (cadr dupends) (+ x 1)) (setq dupends (cdr dupends)) (incf x))
                    (t (setf truth nil)))
              (cond ((equal (cdr dupends) nil) (setf truth nil)))
              (when (equal truth nil) (return)))
            )
          
          (cond ((= (+ x 1) (* size size)) (setf dupends nil)))
          
          
          
          (while (cdr dupends) 
            
            (setq y (cadr dupends))
            
            
            (setq dupends (cdr dupends))
            
            (setq temp (- (- y x) 1))
            (setf paths (depthfirstsearch temp (aref pos x 0) (aref pos x 1) (aref pos y 0) (aref pos y 1) x 5))
            
            ;;;          (setf paths (depthfirstsearch 3 0 2 2 0 3 5))
            
            (cond ((= (list-length paths) 1)
                   (setq temp (cdar paths))
                   
                   (while temp
                     (setq r (nth 0 (car temp)))
                     (setq c (nth 1 (car temp)))
                     (setq val (nth 2 (car temp)))
                     
                     (setf (aref dupgrid r c) val)
                     
                     (setf changes (cons (list r c val) changes))
                     
                     (setf (aref posval r c) nil)                
                     
                     (setf (aref pos val 0) r) 
                     (setf (aref pos val 1) c)
                     (setf (aref pos val 2) nil)
                     
                     (setq dupends (cons val dupends))
                     (setq ends (cons val ends))
                     
                     (setq temp (cdr temp))
                     
                     )
                   (setf update T)
                   )
                  
                  ((> (list-length paths) 1)
                   
                   (let ((common) (a) (b) (v) (nodups) )
                     (setq temp paths)
                     
                     (while temp
                       (setq common (append (car temp) common))
                       (setq temp (cdr temp))
                       )
                     
                     (setq common (remove (list (aref pos x 0) (aref pos x 1) x) common :test #'equal))
                     
                     (setf nodups (remove-duplicates common :test #'equal))
                     
                     (setf temp (list-length paths))
                     
                     (dotimes (num (list-length nodups))
                       
                       (setf (aref pos (nth 2 (nth num nodups)) 2) (cons (list (nth 0 (nth num nodups)) (nth 1 (nth num nodups))) (aref pos (nth 2 (nth num nodups)) 2))) 
                       (setf (aref pos (nth 2 (nth num nodups)) 2) (remove-duplicates (aref pos (nth 2 (nth num nodups)) 2) : test #'equal))
                       
                       (cond ((= (count (nth num nodups) common :test #'equal) temp) (setf a (cons (nth num nodups) a))))
                       )
                     
                     (dotimes (num (list-length a))
                       (setf temp (nth num a))
                       (setf update T)
                       
                       (setq r (nth 0 temp))
                       (setq c (nth 1 temp))
                       (setq val (nth 2 temp))
                       
                       (setf (aref dupgrid r c) val)  
                       
                       (setf changes (cons (list r c val) changes))
                       
                       (setf (aref pos val 0) r) 
                       (setf (aref pos val 1) c)
                       
                       (setf (aref posval r c) nil)
                       
                       (setq dupends (cons val dupends))
                       (setq ends (cons val ends))
                       
                       )
                     
                     ;;;                   posval values to be set
                     
                     (dotimes (num (list-length common))
                       
                       (setq temp (nth num common))
                       
                       (setq a (nth 0 temp))
                       (setq b (nth 1 temp))
                       (setq v (nth 2 temp))
                       
                       (setf (aref posval a b) (cons v (aref posval a b) ))
                       
                       (setf (aref posval a b) (remove-duplicates (aref posval a b) :test #'equal)) 
                       (setf (aref pos v 2) (cons (list a b) (aref pos v 2)))
                       )
                     )
                   )
                  )
            
            (setf dupends (sort dupends #'<))
            (setf ends (sort ends #'<))
            
            (setq x (car dupends))
            (setq y 0)
            
            (let ((truth T))
              
              (cond ((= (list-length dupends) 1) (setf truth nil))
                    (t
                     (loop
                       (cond ((= (cadr dupends) (+ x 1)) (setq dupends (cdr dupends)) (incf x))
                             (t (setf truth nil)))
                       (cond ((equal (cdr dupends) nil) (setf truth nil)))
                       (when (equal truth nil) (return)))))
              )
            
            (cond ((= (+ x 1) (* size size)) (setf dupends nil)))
            
            )
          ;;;          (terpri)(terpri)
          ;;;          (dotimes (num1 size)
          ;;;            (dotimes (num2 size)
          ;;;              (princ (aref posval num1 num2)) (format t "~T")
          ;;;              
          ;;;              )(terpri))
          ;;;          
          
          (cond (update (updatelists)(onlysnake)))
          (cond ((< (list-length changes) (* size size)) 
                 (onlyval)
                 ;;(updatepos)
                 ))
          
          )
        )
      
      
      (defun autoplay()
        (let ((start) (endt))
        
        
        (setq size (autoGrid))
        
        (setq dim (* size size))
        (incf dim)
        (setq pos (make-array (list dim 3)))
        (setq dupgrid (make-array (list size size) :initial-element '0))
        (setq posval (make-array (list size size)))
        
        (dotimes (num1 size) (dotimes (num2 size) 
                               (setq temp1 (aref grid num1 num2))
                               (cond ((> temp1 0)
                                      (setf (aref pos temp1 0) num1) 
                                      (setf (aref pos temp1 1) num2)
                                      (setf (aref dupgrid num1 num2) temp1)
                                      
                                      (setf (aref posval num1 num2) nil)
                                      
                                      (setf ends (cons temp1 ends))
                                      (setf ends (sort ends #'<))
                                      
                                      (setq temp2 0)
                                      
                                      (cond ((> num1 0) (cond ((= (aref grid (- num1 1) num2) 0) (incf temp2)))))
                                      (cond ((< num1 (- size 1)) (cond ((= (aref grid (+ num1 1) num2) 0) (incf temp2)))))
                                      (cond ((> num2 0) (cond ((= (aref grid num1 (- num2 1)) 0) (incf temp2)))))
                                      (cond ((< num2 (- size 1)) (cond ((= (aref grid num1 (+ num2 1)) 0) (incf temp2)))))
                                      
                                      (cond ((= temp2 1) (setf list1 (cons temp1 list1)))
                                            ((= temp2 2) (setf list2 (cons temp1 list2)))
                                            ((= temp2 3) (setf list3 (cons temp1 list3)))
                                            ((= temp2 4) (setf list4 (cons temp1 list4))))
                                      ))
                               )
          )
        
        (setf list1 (sort list1 #'<))
        (setf list2 (sort list2 #'<))
        (setf list3 (sort list3 #'<))
        (setf list4 (sort list4 #'<))
        
        (setq temp1 1)
        
        (setq dupends ends)
              
              (setq start (get-internal-run-time))
              
        (while (< (list-length ends) (* size size)) ;;(or (or (or list1 list2) list3) list4)
          (cond ((< (list-length ends) (* 2 size)) (onlypath) (onlysnake))
                (t (onlysnake) (onlypath)	))
          
          )
          (setq endt (get-internal-run-time))
          
          (terpri)(princ "Time: ")(princ (float (/ (- endt start) internal-time-units-per-second)))
              (terpri)

        (printgrid dupgrid)
        )
      )
    )
    ;---------------------------------------------------------------------------------------------------------------------------------------
    ;...........................................................END OF AUTOPLAY.............................................................
    ;---------------------------------------------------------------------------------------------------------------------------------------    
    
    (defun numbrix()
      "Start screen of Numbrix"
      
      
      
      (terpri)(princ "Hello! Welcome to NUMBRIX!")
      (terpri)(princ "Rules: Starting anywhere on the square, fill in the blank squares with the missing numbers so they make a path in numerical order, 1 through X. ")
      (terpri)(princ "You can work horizontally or vertically in any direction, but diagonal paths are not allowed.")
      
      (let ((choice) (replay))
        (loop
          (format t "~%Menu:~%1. Play ~%2. Autoplay~%")
          (loop
            (setf choice (read))
            (cond 
             ((= choice 1) (play))
             ((= choice 2) (autoplay))
             (t (format t "Invalid input. Enter choice again: "))
             )
            (when (or (= choice 2) (= choice 1)) (return t)))
          
          (terpri)(princ "Do you wish to replay (y/n)?")
          (setq replay (read))
          (when (not (eq replay 'y)) (return "Thanks for playing NUMBRIX!"))
          )))
    )
  
  )
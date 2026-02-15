(use srfi-13) ;;string operations
(use srfi-27) ;;random generator functions

(define buffer-length-elements 40)
(define ddsk-elem '("ドド" "スコ"))
(define ddsk-goal "ドドスコスコスコドドスコスコスコドドスコスコスコ")

;; shorter version for debugging
;;(define ddsk-goal "ドドスコスコスコ")

(define (dd-loop txtlst depth)
  (let* (
	;; pick "ドド" or "スコ"
	(next-elem (if (equal? (random-integer 2) 0) "ドド" "スコ"))
	(next-txtlst (append txtlst (cons next-elem '())))
	)
;;    (print next-txtlst)
    (print next-elem)
    ;; ddsk check
    (when
	(not (or (string-contains (string-join next-txtlst "") ddsk-goal)
		 ;; note: skipping delimiter means delim=" " automatically
	     (> depth 10000) )
	     )
      ;; order: contains text word
      (dd-loop (if (> (length next-txtlst) buffer-length-elements)
		   (cdr next-txtlst)
		   next-txtlst
		   ) (+ 1 depth))
      )
    )
  )

;; main() part
(random-source-randomize! default-random-source); initialize
(dd-loop '() 0)
(print "ラブ注入❤")


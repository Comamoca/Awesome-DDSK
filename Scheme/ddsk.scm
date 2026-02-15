(use srfi-13) ;;string operations
(use srfi-27) ;;random generator functions

(define buffer-length-elements 40)
(define ddsk-elem '("ドド" "スコ"))
(define ddsk-goal "ドドスコスコスコドドスコスコスコドドスコスコスコ")

;; shorter version for debugging
;;(define ddsk-goal "ドドスコスコスコ")

(define (dd-loop txtlst)
  (let* (
	;; pick "ドド" or "スコ"
	(next-elem (if (equal? (random-integer 2) 0) "ドド" "スコ"))
	(next-txtlst (append txtlst (cons next-elem '())))
	)
    (print next-elem)
    ;; ddsk check
    (when
	(not  (string-contains (string-join next-txtlst "") ddsk-goal)
	      ;; note: skipping delimiter means delim=" " automatically
	      ;; order: contains text word
	      )
      (dd-loop (if (> (length next-txtlst) buffer-length-elements)
		   (cdr next-txtlst)
		   next-txtlst))
      )
    )
  )

;; main() part
(random-source-randomize! default-random-source); initialize
(dd-loop '())
(print "ラブ注入❤")


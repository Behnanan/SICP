(require (planet dyoo/simply-scheme))
(load "majority.scm")
(load "stop-at-17.scm")
(load "dealer-sensitive.scm")
(load "valentine.scm")
(load "assert.scm")
(require racket/trace)

(define standard-majority (majority stop-at-17 dealer-sensitive valentine))

(assert equal? (standard-majority '(5s 6s) 'as) #t "less than 17, all #t")
(assert equal? (standard-majority '(9s 6s) 'as) #t "less than 17, all #t")
(assert equal? (standard-majority '(10h 7s) 'as) #f "majority #f")
(assert equal? (standard-majority '(10h 10s) 'as) #f "#f")
(assert equal? (standard-majority '(10s 2s) 'as) #t "less than 17, all #t")
(assert equal? (standard-majority '(ad 4h) 'as) #t "less than 17, all #t")
(assert equal? (standard-majority '() 'as) #t "empty hand -> #t")

(display "done.\n")
(exit)

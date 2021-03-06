"2. Last week you wrote procedures squares, that squared each number in its argument
sentence, and saw pigl-sent, that pigled each word in its argument sentence. Generalize
this pattern to create a higher-order procedure called every that applies an arbitrary
procedure, given as an argument, to each word of an argument sentence. This procedure
is used as follows:
> (every square ’(1 2 3 4))
(1 4 9 16)
> (every first ’(nowhere man))
(n m)"

(define (every func input)
  (if (empty? input)
    '() 
    (se (func (first input))
        (every func (bf input)))))
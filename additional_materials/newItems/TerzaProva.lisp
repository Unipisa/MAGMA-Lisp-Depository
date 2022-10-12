
(putdq label 
     (lambda (x) (set x  (getap)))))

(putdq go  
     (lambda (x) 
          (apply (quote (lambda () (quote)))
                 (cons x)
                 (cons x)))))

(putdq fun 
     (lambda (x a) 
          (label (quote a))
               (set (quote x) (cdr x))
               (cond ((quote t) 
                      ((lambda (y) (print (cons y y)) (getap))
                       x)))
               (cond ((eq (quote a) (car x))
                      (go a))
                     ((quote t)
                      x))))

Domanda: e' un  caso che la label si chiami "a", o e' necessario? Ossia, cambiando "a" in "l", tranne che a riga 17, cambia qualcosa?
Commento: Il secondo argomento serve solo per introdurre un nome cui associare la label. Per cui direi che si può rinominare.
Domanda: Cosa ci sta a fare il (getap) a linea 15? Per debug, visto che setdeb è attivo? Il valore viene perso...

Riscrivendo fun in stile più moderno, trascurando i vincoli imposti dalla natura primitiva dell'interprete del 1973, si ha :

(putdq fun 
     (lambda (x l) 
          (label 'l)
               (setq x (cdr x))
               (print (cons x x))
               (cond ((eq (car x) 'a) (go l))
                     (t x))))

da cui è più facile capire il comportamento : 
     fun mangia tutte le "a" nel suo primo argomento, dopo averne escluso, per ragioni misteriose, il primo elemento.
     Ad ogni passo stampa due volte ciò che resta dell'argomento stesso. In questa prova,
     con argomento (b a b b) stampa  ((A B B) A B B), ((B B) B B) e infine restituisce (B B). Sehr compliziert!

Caveat: label e go non sono le primitive della forma prog, non ancora disponibile nell'interprete del 1973, ma funzioni costruite
     con le primitive definite dall'estensione MAGMA, il cui esatto funzionamento va ricostruito. In prima approssimazione
     si può dire che label cattura il blocco di controllo (A-block) all'inizio di fun, e go lo usa per rilanciarne l'esecuzione,
     tramite una funzione vuota. Giusto per confronto, usando prog:

(putdq fun 
     (lambda (x) 
          (prog ()
            l  (setq x (cdr x))
               (print (cons x x))
               (cond ((eq (car x) 'a) (go l))
                     (t x)))))

Commento: L'uso di (cons x) come lista di argomenti in apply in go è misterioso. Inoltre, pare quasi che l'interprete 
     non riconoscesse ancora NIL, visto l'uso di (quote) per esprimerlo.


% figure out what key we're in
% CHANGE THIS VALUE TO GET A DIFFERENT TRANSPOSITION OF THE BOOK
#(define transpose-version 'ees)

%% reverse transposition
%% TODO: do this in a non-hardcoded way?
#(define key-transposition-alist '((c . c)
				   (cis . b)
				   (des . b)
				   (d  . bes)
				   (dis . a)
				   (ees . a)
				   (e  . aes)
				   (f  . g)
				   (fis . ges)
				   (ges . ges)
				   (g  . f)
				   (gis . e)
				   (aes . e)
				   (b  . ees)
				   (ais . d)
				   (bes . d)))
%% string names for each key symbol. very useful
#(define tonality-names '((c . "C") (cis . "C♯") ( d . "D") (ees . "E♭")(e . "E")(f . "F")(ges . "G♭")(g . "G")(aes . "A♭")(a . "A")(bes . "B♭")(b . "B")))

#(define (key->pitch sym)
  (apply ly:make-pitch 
   (cdr (assv sym '((c . (0 0 0))
		   (des . (0 1 -1/2))
		   (d . (0 1 0))
		   (ees . (0 2 -1/2))
		   (e   . (0 2 0))
		   (f   . (0 3 0))
		   (ges . (0 4 -1/2))
		   (g   . (0 4 0))
		   (aes . (0 5 -1/2))
		   (a   . (0 5 0))
		   (bes . (0 6 -1/2))
		   (b   . (0 6 0)))))))

%% this assigns a pitch object that can be dropped into \transpose statements later

#(define transpose-key (key->pitch (cdr (assv transpose-version key-transposition-alist))))

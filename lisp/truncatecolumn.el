(with-temp-buffer
       (insert "instrument_id |position_id   |for food!")
       (goto-char (point-min))
       (while (re-search-forward "|position_id   |" nil t)
         (replace-match (concat(truncate-string-to-width (match-string 0) 7) " |")))
       (buffer-string))

todo: DO: ayb-resize-column
      ;--> |column...........| -->|column..|
; use conat(truncated, " |")

; format(%s |, match0)substr(0,10) + concat '|'

-------------------------------

; symbols r by default global
(setq inputstr "pid   |iid    |cu  ")

; access the richer set of text manipulation funcs
(with-temp-buffer (insert inputstr) (buffer-string))

(with-temp-buffer
  (insert "Fight foo for food!")
  (goto-char (point-min))
  (while (re-search-forward "foo*" nil t)
    (replace-match (capitalize (match-string 0))))
  (buffer-string))

; split into list obj
(split-string inputstr "|")

; iterate thru list mapc if no return use mapc. 1+ builtin
(mapcar '1+ (list 1 2 3))

; with in line lambda func
(mapcar (lambda(x)(* x x)) (list 1 2 3))

; truncate all words in a sentence
(mapcar (lambda(x)(truncate-string-to-width x 3)) inputlist)

; pre output filtering: M-x shell, M-:
(add-hook 'comint-preoutput-filter-functions 'upcase)

; temp-buffer
(with-temp-buffer 
 (insert "BLAH" ) 
 (buffer-substring (point-min) (point-max))) --> BLAH

; regex col header and space
[[:word:] ]+|

;; transform regex matches
\& whole match
\d (dth parentized grup
\? ask for each match
\#& treat match as a number

replace-regexp c[ad]+r  \&-safe --> car-safe
               \(c[ad]+r\)-safe \1 --> converts car-safe to car


--------------



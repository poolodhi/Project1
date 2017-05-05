(defglobal ?*global-var* ="") 

(deftemplate help(slot value))
(deftemplate rules
  (slot fact-is
    ;(type STRING)
	)
  (slot value
    ;(type STRING)
    ;(default "none")
	(default none)
	)
	(slot compare-value
    ;(type STRING)
    ;(default "none")
	(default none)
	)
)
;(deftemplate and-bound
;(multislot bound)
;)
;(deftemplate and-bound
;(slot bound)
;)
(defglobal ?*and-bound* = "")


(deffunction join-ands (?f)
	(bind ?a (fact-index ?f))
	(bind ?*and-bound* (str-cat ?*and-bound* "-"?a))
	;(printout t ?*and-bound* crlf)
)
(deffunction join-ands-start (?f)
	(bind ?a (fact-index ?f))
	(bind ?*and-bound* (str-cat ?*and-bound* "-~"?a"/"))
	;(printout t ?*and-bound* crlf)
)
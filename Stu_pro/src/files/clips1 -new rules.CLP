

(defrule gen-1
	(rules (fact-is day) (value ?y))(or (test (= (str-compare "monday" ?y) 0))(test (= (str-compare "tuesday" ?y) 0))(test (= (str-compare "wednesday" ?y) 0))(test (= (str-compare "thursday" ?y) 0))(test (= (str-compare "friday" ?y) 0))(test (= (str-compare "saturday" ?y) 0)))
	=>
	(assert(rules (fact-is college-is-open) (value ?y)))
)
(defrule gen-2
	(rules (fact-is college-is-open)(value ?y))(or (test (= (str-compare "monday" ?y) 0))(test (= (str-compare "tuesday" ?y) 0))(test (= (str-compare "wednesday" ?y) 0))(test (= (str-compare "thursday" ?y) 0))(test (= (str-compare "friday" ?y) 0)))
	=>
	(assert(rules (fact-is can-return-book) (value ?y)))
	(assert(rules (fact-is can-issue-book) (value ?y)))
)

(defrule gen-3
	(rules (fact-is day)(value ?y))(test (= (str-compare "sunday" ?y) 0))
	=>
	(assert(rules (fact-is college-is-closed) (value ?y)))
)

(defrule gen-4
	(rules (fact-is special-days)(value ?y)) 
	=>
	(assert(rules (fact-is college-is-closed) (value ?y)))
)

(defrule gen-6
	(and (rules (fact-is is-device)(value ?y)) (rules (fact-is college-have)(compare-value college-network))(rules (fact-is device-connected-to-college-network)))
	=>
	(assert(rules (fact-is can-be-access-from)(value fileserver)(compare-value ?y)))
	(assert(help (value fileserver)))
)
(defrule gen-61
	?adr<-(help(value ?x))
	(and (rules (fact-is can-be-access-from)(value ?x)) (rules (fact-is have) (value ?x)(compare-value ?z)) (not(eq ?x none)))
	=>
	(assert (rules (fact-is can-be-access-from)(value ?z)(compare-value ?x)))
	(bind ?a (length$ (find-all-facts ((?f rules)) (and(eq ?f:fact-is have)(eq ?f:value ?x)))))
	(bind ?b (length$ (find-all-facts ((?f rules)) (and(eq ?f:fact-is can-be-access-from)(eq ?f:compare-value ?x)))))
	;(printout t ?a ?b crlf)
	(if(= ?a ?b)
	then(retract ?adr)
	(printout t ?a ?b crlf))
	(assert (help(value ?z)))
)

(defrule gen-71
	(rules (fact-is college-have)(compare-value college-network)) 
	=>
	(assert(rules (fact-is have) (value college-network)(compare-value fileserver)))
)
(defrule gen-72
	(rules (fact-is have)(value college-network)(compare-value fileserver))
	=>
	(assert(rules (fact-is have)(value fileserver) (compare-value sm)))
)
(defrule gen-73
	(rules (fact-is have)(value fileserver)(compare-value sm))
	=>
	(assert(rules (fact-is have)(value sm)(compare-value course-description)))
	(assert(rules (fact-is have)(value sm)(compare-value  reference-material)))
	(assert(rules (fact-is have)(value sm)(compare-value  time-table)))
)

(defrule gen-8
	(rules (fact-is classroom)(value ?y))(or(test (= (str-compare "g" (sub-string 1 1 ?y)) 0)) (test (= (str-compare "l" (sub-string 1 1 ?y)) 0)))
	=>
	(assert(rules (fact-is have)(value ABB-I,-ground-floor)(compare-value ?y)))
)
(defrule gen-9
	(rules (fact-is classroom)(value ?y))(test (= (str-compare "s" (sub-string 2 2 ?y)) 0)) 
	=>
	(assert(rules (fact-is have)(value ABB-I,-second-floor)(compare-value ?y)))
)
(defrule gen-10
	(rules (fact-is classroom)(value ?y))(test (= (str-compare "f" (sub-string 2 2 ?y)) 0)) 
	=>
	(assert(rules (fact-is have)(value ABB-I,-first-floor)(compare-value ?y)))
)
(defrule gen-11
	(rules (fact-is classroom)(value ?y))(test (= (str-compare "cl" (sub-string 1 2 ?y)) 0)) 
	=>
	(assert(rules (fact-is classroom-type)(value computer-lab)(compare-value ?y)))
)
(defrule gen-12
	(rules (fact-is classroom)(value ?y))(or (test (= (str-compare "l" (sub-string 1 1 ?y)) 0)) (test (= (str-compare "g" (sub-string 1 1 ?y)) 0)) (test (= (str-compare "cs" (sub-string 1 2 ?y)) 0))) 
	=>
	(assert(rules (fact-is classroom-type)(value lecture-room)(compare-value ?y)))
)
(defrule gen-13
	(rules (fact-is classroom)(value ?y))(test (= (str-compare "t" (sub-string 1 1 ?y)) 0)) 
	=>
	(assert(rules (fact-is classroom-type)(value tutorial-room)(compare-value ?y)))
)
(defrule gen-14
	(rules (fact-is branch)(value ?y)) 
	=>
	(assert(rules (fact-is max-students-in-batch)(value 30)(compare-value ?y)))
)
(defrule gen-15
	(rules (fact-is branch)(value ?y))(test (= (str-compare "dual" (sub-string 1 4 ?y)) 0)) 
	=>
	(assert (rules (fact-is max-book-allowed-to-issue)(value 4)(compare-value ?y)))
)
(defrule gen-16
	(rules (fact-is branch)(value ?y))(test (!= (str-compare "dual" (sub-string 1 4 ?y)) 0)) 
	=>
	(assert (rules (fact-is max-book-allowed-to-issue)(value 3)(compare-value ?y)))
)
(defrule gen-17
	(rules (fact-is department)(value ?y))(or (test (= (str-compare "cse" ?y) 0)) (test (= (str-compare "physics" ?y) 0)) (test (= (str-compare "ece" ?y) 0)))
	=>
	(assert(rules (fact-is have)(value ?y)(compare-value lab)))
)
(defrule gen-18
	(rules (fact-is have)(compare-value lab)(value ?y)) 
	=>
	(assert (rules (fact-is have)(value ?y)(compare-value lab-test)))
)
(defrule gen-18-1
	(or (rules (fact-is after)(compare-value t1)) (rules (fact-is after)(compare-value t2))) 
	=>
	(assert (rules (fact-is have)(compare-value lab-test)))
)
(defrule gen-19
	(rules (fact-is have)(compare-value lab)(value ?y)) (test (= (str-compare "cse" ?y) 0))
	=>
	(assert (rules (fact-is have)(value ?y)(compare-value lab-quiz)))
)

(defrule gen-20
	(rules (fact-is college-have)(compare-value lrc))
	=>
	(assert(rules (fact-is have)(value lrc)(compare-value book)))
	(assert(rules (fact-is have)(value lrc)(compare-value newspaper)))
	(assert(rules (fact-is have)(value lrc)(compare-value magzine)))
	(assert(rules(fact-is issued-from)(value book)(compare-value lrc)))
)
(defrule gen-21
	(rules (fact-is have)(value lrc)(compare-value ?x))
	=>
	(assert (rules (fact-is can-be-read-in)(value ?x)(compare-value lrc)))
)
(defrule gen-22
	(rules (fact-is to-change-faculty))
	=>
	(assert(rules (fact-is write-application)(compare-value to-HOD-of-that-department)))
)
;---------------------------------------------

(defrule has-account
	(rules (fact-is student))
	=>
	(assert(rules (fact-is has)(value student)(compare-value webkisok-account)))
)
(defrule has-view
	(rules (fact-is has)(value ?x)(compare-value webkisok-account))
	=>
	(assert(rules (fact-is can-access)(value ?x)(compare-value webkisok))) 
)
(defrule can-access-webkisok
	(and (rules (fact-is can-access)(value ?x)(compare-value webkisok)) (rules (fact-is have)(value webkisok)(compare-value ?y))) 
	=>
	(assert(rules (fact-is can-access)(value ?x)(compare-value ?y))) 
)
(defrule has-id-card
	(rules (fact-is student))
	=>
	(assert(rules (fact-is has) (value student)(compare-value id-card)))
)
(defrule allowed-to-issue-book
	(and (rules (fact-is has)(value ?x)(compare-value id-card)) (rules (fact-is register-in-lrc)(value ?x)) (rules (fact-is not-have-fine-in-lrc)))
	=>
	(assert (rules (fact-is can-issue)(value ?x)(compare-value book)))
)
(defrule late-book-return-1
	(rules (fact-is after)(value return-book)(compare-value book-returning-period))
	=>
	(assert(rules (fact-is return-book)(value student)(compare-value late)))
)

(defrule late-book-return-2
	(rules (fact-is return-book)(value ?y)(compare-value late))
	=>
	(assert(rules (fact-is have-to-pay)(value ?y)(compare-value fine)))
)


(defrule debarred-student
	(rules (fact-is less-than)(value attendence)(compare-value 60))
	=>
	(assert(rules (fact-is get-debarred)(value student)))
)
(defrule can-apply-for-summer-sem
	(rules (fact-is get-debarred)(value ?x))
	=>
	(assert(rules (fact-is have-to-take)(value ?x)(compare-value summer-semester)))
)
(defrule makeup-exam-eligibility
	(or (rules (fact-is not-given)(compare-value t1)) (rules (fact-is not-given)(compare-value t2)))
    =>
	(assert (rules (fact-is have-to-give)(value student)(compare-value makeup-exam)))
)
(defrule fails
	(rules (fact-is grade)(value F))
	=>
	(assert (rules (fact-is fails)(value student)(compare-value subject)))
)
(defrule supplementary-exam
	(rules (fact-is fails)(value ?x)(compare-value subject))
	=>
	(assert (rules (fact-is have-to-give)(value ?x)(compare-value supplementary-exam)))
)
(defrule fails-supplementary-exam
	(rules (fact-is fails)(value ?x)(compare-value supplementary-exam))
	=>
	(assert (rules (fact-is get-back)(value ?x)))
)

(defrule get-back
	(rules (fact-is get-back)(value ?x))
	=>
	(assert(rules (fact-is have-to-take)(value ?x)(compare-value summer-semester)))
	(assert(rules (fact-is have-to-take)(value ?x)(compare-value backlog)))
)
(defrule year-back
	(rules (fact-is less-than)(value cgpa)(compare-value 4.0))
	=>
	(assert(rules (fact-is get-year-back)(value student)))
)
(defrule break-rule
	(rules (fact-is break-rules)(value ?y))
	=>
	(assert(rules (fact-is have-to-pay)(value ?y)(compare-value fine)))
)
(defrule faculty-change
	(rules (fact-is face-problem-with)(value student)(compare-value faculty))
	=>
	(assert(rules (fact-is can-change)(compare-value faculty)))
)

(defrule gen-1-0-0
?adr<-(rules (fact-is college-is-open) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is day) (value monday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is day) (eq ?f1:value monday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1-0-1
?adr<-(rules (fact-is college-is-open) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is day) (value tuesday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is day) (eq ?f1:value tuesday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1-0-2
?adr<-(rules (fact-is college-is-open) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is day) (value wednesday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is day) (eq ?f1:value wednesday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1-0-3
?adr<-(rules (fact-is college-is-open) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is day) (value thursday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is day) (eq ?f1:value thursday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1-0-4
?adr<-(rules (fact-is college-is-open) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is day) (value friday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is day) (eq ?f1:value friday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1-0-5
?adr<-(rules (fact-is college-is-open) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is day) (value saturday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is day) (eq ?f1:value saturday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-0-0
?adr<-(rules (fact-is can-return-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value monday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value monday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-0-1
?adr<-(rules (fact-is can-return-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value tuesday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value tuesday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-0-2
?adr<-(rules (fact-is can-return-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value wednesday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value wednesday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-0-3
?adr<-(rules (fact-is can-return-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value thursday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value thursday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-0-4
?adr<-(rules (fact-is can-return-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value friday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value friday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-1-0
?adr<-(rules (fact-is can-issue-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value monday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value monday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-1-1
?adr<-(rules (fact-is can-issue-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value tuesday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value tuesday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-1-2
?adr<-(rules (fact-is can-issue-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value wednesday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value wednesday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-1-3
?adr<-(rules (fact-is can-issue-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value thursday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value thursday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-2-1-4
?adr<-(rules (fact-is can-issue-book) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-is-open)(value friday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-is-open)(eq ?f1:value friday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-3-0
?adr<-(rules (fact-is college-is-closed) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is day)(value sunday))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is day)(eq ?f1:value sunday)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-4-0
?adr<-(rules (fact-is college-is-closed) (value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is special-days)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is special-days)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-6-0
?adr<-(rules (fact-is can-be-access-from)(value fileserver)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-device)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-device)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)(bind ?f (assert(rules (fact-is college-have)(compare-value college-network))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-have)(eq ?f1:compare-value college-network)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)(bind ?f (assert(rules (fact-is device-connected-to-college-network))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is device-connected-to-college-network)(eq ?f1:compare-value none)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-61-0
?adr<-(rules (fact-is can-be-access-from)(value ?z)(compare-value ?x))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is can-be-access-from)(value ?x)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is can-be-access-from)(eq ?f1:value ?x) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)(bind ?f (assert(rules (fact-is have) (value ?x)(compare-value ?z)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have) (eq ?f1:value ?x)(eq ?f1:compare-value ?z) )
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-71-0
?adr<-(rules (fact-is have) (value college-network)(compare-value fileserver))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-have)(compare-value college-network)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-have)(eq ?f1:compare-value college-network) (eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-72-0
?adr<-(rules (fact-is have)(value fileserver) (compare-value sm))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value college-network)(compare-value fileserver))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value college-network)(eq ?f1:compare-value fileserver))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-73-0
?adr<-(rules (fact-is have)(value sm)(compare-value course-description))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value fileserver)(compare-value sm))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value fileserver)(eq ?f1:compare-value sm))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-73-1
?adr<-(rules (fact-is have)(value sm)(compare-value  reference-material))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value fileserver)(compare-value sm))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value fileserver)(eq ?f1:compare-value sm))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-73-2
?adr<-(rules (fact-is have)(value sm)(compare-value  time-table))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value fileserver)(compare-value sm))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value fileserver)(eq ?f1:compare-value sm))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-8-0
?adr<-(rules (fact-is have)(value ABB-I,-ground-floor)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is classroom)(value ?y))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is classroom)(eq ?f1:value ?y)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-9-0
?adr<-(rules (fact-is have)(value ABB-I,-second-floor)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is classroom)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is classroom)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-10-0
?adr<-(rules (fact-is have)(value ABB-I,-first-floor)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is classroom)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is classroom)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-11-0
?adr<-(rules (fact-is classroom-type)(value computer-lab)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is classroom)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is classroom)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-12-0-0
?adr<-(rules (fact-is classroom-type)(value lecture-room)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is classroom)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is classroom)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-12-0-1
?adr<-(rules (fact-is classroom-type)(value lecture-room)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is classroom)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is classroom)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-12-0-2
?adr<-(rules (fact-is classroom-type)(value lecture-room)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is classroom)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is classroom)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-13-0
?adr<-(rules (fact-is classroom-type)(value tutorial-room)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is classroom)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is classroom)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-14-0
?adr<-(rules (fact-is max-students-in-batch)(value 30)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is branch)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is branch)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-15-0
?adr<-(rules (fact-is max-book-allowed-to-issue)(value 4)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is branch)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is branch)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-16-0
?adr<-(rules (fact-is max-book-allowed-to-issue)(value 3)(compare-value ?y))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is branch)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is branch)(eq ?f1:value ?y) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-17-0-0
?adr<-(rules (fact-is have)(value ?y)(compare-value lab))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is department)(value cse))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is department)(eq ?f1:value cse)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-17-0-1
?adr<-(rules (fact-is have)(value ?y)(compare-value lab))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is department)(value physics))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is department)(eq ?f1:value physics)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-17-0-2
?adr<-(rules (fact-is have)(value ?y)(compare-value lab))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is department)(value ece))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is department)(eq ?f1:value ece)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-18-0
?adr<-(rules (fact-is have)(value ?y)(compare-value lab-test))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(compare-value lab)(value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:compare-value lab)(eq ?f1:value ?y) )
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-18-1-0-0
?adr<-(rules (fact-is have)(compare-value lab-test))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is after)(compare-value t1)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is after)(eq ?f1:compare-value t1) (eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-18-1-0-1
?adr<-(rules (fact-is have)(compare-value lab-test))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is after)(compare-value t2)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is after)(eq ?f1:compare-value t2) (eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-19-0
?adr<-(rules (fact-is have)(value ?y)(compare-value lab-quiz))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(compare-value lab)(value cse)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:compare-value lab)(eq ?f1:value cse) )
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-20-0
?adr<-(rules (fact-is have)(value lrc)(compare-value book))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-have)(compare-value lrc))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-have)(eq ?f1:compare-value lrc)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-20-1
?adr<-(rules (fact-is have)(value lrc)(compare-value newspaper))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-have)(compare-value lrc))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-have)(eq ?f1:compare-value lrc)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-20-2
?adr<-(rules (fact-is have)(value lrc)(compare-value magzine))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-have)(compare-value lrc))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-have)(eq ?f1:compare-value lrc)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-20-3
?adr<-(rules(fact-is issued-from)(value book)(compare-value lrc))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is college-have)(compare-value lrc))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is college-have)(eq ?f1:compare-value lrc)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-21-0
?adr<-(rules (fact-is can-be-read-in)(value ?x)(compare-value lrc))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value lrc)(compare-value ?x))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value lrc)(eq ?f1:compare-value ?x))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-22-0
?adr<-(rules (fact-is write-application)(compare-value to-HOD-of-that-department))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is to-change-faculty))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is to-change-faculty)(eq ?f1:compare-value none)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule has-account-0
?adr<-(rules (fact-is has)(value student)(compare-value webkisok-account))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is student)(eq ?f1:compare-value none)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule has-view-0
?adr<-(rules (fact-is can-access)(value ?x)(compare-value webkisok)) 
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has)(value ?x)(compare-value webkisok-account))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has)(eq ?f1:value ?x)(eq ?f1:compare-value webkisok-account))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule can-access-webkisok-0
?adr<-(rules (fact-is can-access)(value ?x)(compare-value ?y)) 
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is can-access)(value ?x)(compare-value webkisok)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is can-access)(eq ?f1:value ?x)(eq ?f1:compare-value webkisok) )
(bind ?f ?f1))
)(join-ands ?f)(bind ?f (assert(rules (fact-is have)(value webkisok)(compare-value ?y)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value webkisok)(eq ?f1:compare-value ?y) )
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule has-id-card-0
?adr<-(rules (fact-is has) (value student)(compare-value id-card))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is student)(eq ?f1:compare-value none)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule allowed-to-issue-book-0
?adr<-(rules (fact-is can-issue)(value ?x)(compare-value book))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has)(value ?x)(compare-value id-card)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has)(eq ?f1:value ?x)(eq ?f1:compare-value id-card) )
(bind ?f ?f1))
)(join-ands ?f)(bind ?f (assert(rules (fact-is register-in-lrc)(value ?x)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is register-in-lrc)(eq ?f1:value ?x) (eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)(bind ?f (assert(rules (fact-is not-have-fine-in-lrc))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is not-have-fine-in-lrc)(eq ?f1:compare-value none)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule late-book-return-1-0
?adr<-(rules (fact-is return-book)(value student)(compare-value late))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is after)(value return-book)(compare-value book-returning-period))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is after)(eq ?f1:value return-book)(eq ?f1:compare-value book-returning-period))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule late-book-return-2-0
?adr<-(rules (fact-is have-to-pay)(value ?y)(compare-value fine))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is return-book)(value ?y)(compare-value late))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is return-book)(eq ?f1:value ?y)(eq ?f1:compare-value late))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule debarred-student-0
?adr<-(rules (fact-is get-debarred)(value student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is less-than)(value attendence)(compare-value 60))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is less-than)(eq ?f1:value attendence)(eq ?f1:compare-value 60))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule can-apply-for-summer-sem-0
?adr<-(rules (fact-is have-to-take)(value ?x)(compare-value summer-semester))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is get-debarred)(value ?x))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is get-debarred)(eq ?f1:value ?x)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule makeup-exam-eligibility-0-0
?adr<-(rules (fact-is have-to-give)(value student)(compare-value makeup-exam))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is not-given)(compare-value t1)) ))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is not-given)(eq ?f1:compare-value t1) (eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule makeup-exam-eligibility-0-1
?adr<-(rules (fact-is have-to-give)(value student)(compare-value makeup-exam))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is not-given)(compare-value t2))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is not-given)(eq ?f1:compare-value t2)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule fails-0
?adr<-(rules (fact-is fails)(value student)(compare-value subject))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is grade)(value F))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is grade)(eq ?f1:value F)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule supplementary-exam-0
?adr<-(rules (fact-is have-to-give)(value ?x)(compare-value supplementary-exam))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fails)(value ?x)(compare-value subject))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fails)(eq ?f1:value ?x)(eq ?f1:compare-value subject))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule fails-supplementary-exam-0
?adr<-(rules (fact-is get-back)(value ?x))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fails)(value ?x)(compare-value supplementary-exam))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fails)(eq ?f1:value ?x)(eq ?f1:compare-value supplementary-exam))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule get-back-0
?adr<-(rules (fact-is have-to-take)(value ?x)(compare-value summer-semester))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is get-back)(value ?x))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is get-back)(eq ?f1:value ?x)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule get-back-1
?adr<-(rules (fact-is have-to-take)(value ?x)(compare-value backlog))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is get-back)(value ?x))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is get-back)(eq ?f1:value ?x)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule year-back-0
?adr<-(rules (fact-is get-year-back)(value student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is less-than)(value cgpa)(compare-value 4.0))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is less-than)(eq ?f1:value cgpa)(eq ?f1:compare-value 4.0))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule break-rule-0
?adr<-(rules (fact-is have-to-pay)(value ?y)(compare-value fine))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is break-rules)(value ?y))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is break-rules)(eq ?f1:value ?y)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule faculty-change-0
?adr<-(rules (fact-is can-change)(compare-value faculty))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is face-problem-with)(value student)(compare-value faculty))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is face-problem-with)(eq ?f1:value student)(eq ?f1:compare-value faculty))
(bind ?f ?f1))
)(join-ands ?f)
)


(defrule gen-1494307753005-0
?adr<-(rules (fact-is be-completed-there-is)(value tutorial-practical-work)(compare-value scope-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is specifying)(compare-value time-limit-within))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is specifying)(eq ?f1:compare-value time-limit-within)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307754985-0
?adr<-(rules (fact-is be-accepted)(value tutorial-practical-session-time-up-to-late-submissions))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is notify)(value faculty)(compare-value penalty-for-late-submission-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is notify)(eq ?f1:value faculty)(eq ?f1:compare-value penalty-for-late-submission-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307762597-0
?adr<-(rules (fact-is put)(compare-value sustained-disciplined-work-over-entire-period-of-study))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-to-train)(compare-value student-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-to-train)(eq ?f1:compare-value student-to)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307764627-0
?adr<-(rules (fact-is be-allocated-to)(value balance-25%)(compare-value assignments))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(compare-value total-weight-age-of-75%))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:compare-value total-weight-age-of-75%)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307774177-0
?adr<-(rules (fact-is appointed)(value week-on)(compare-value days-time))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is meet-report-to)(value students)(compare-value supervisors-at-least))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is meet-report-to)(eq ?f1:value students)(eq ?f1:compare-value supervisors-at-least))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307776217-0
?adr<-(rules (fact-is be-declared)(compare-value pass))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is obtaining)(value grading-system:-students)(compare-value grades-to-d))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is obtaining)(eq ?f1:value grading-system:-students)(eq ?f1:compare-value grades-to-d))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307777747-0
?adr<-(rules (fact-is be-awarded)(compare-value f-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is failing)(value students)(compare-value subject))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is failing)(eq ?f1:value students)(eq ?f1:compare-value subject))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307779257-0
?adr<-(rules (fact-is written)(value components-theory-three)(compare-value tests))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-decided)(value grades)(compare-value aggregate-of-evaluation-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-decided)(eq ?f1:value grades)(eq ?f1:compare-value aggregate-of-evaluation-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307784017-0
?adr<-(rules (fact-is be-debarred)(value he/she))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value attendance-profile-of-student)(compare-value unsatisfactory-as-in-rules-below))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value attendance-profile-of-student)(eq ?f1:compare-value unsatisfactory-as-in-rules-below))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307785527-0
?adr<-(rules (fact-is being-debarred)(compare-value due-to-attendance-shortage))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has-been-awarded)(value student)(compare-value f-grade-because-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has-been-awarded)(eq ?f1:value student)(eq ?f1:compare-value f-grade-because-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307787567-0
?adr<-(rules (fact-is allowing-make)(value policy-for)(compare-value examination-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is make)(compare-value examinations))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is make)(eq ?f1:compare-value examinations)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307789077-0
?adr<-(rules (fact-is prove)(value documents-to)(compare-value genuineness-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is put-up)(value students)(compare-value request-for-make-up-examination-along-with))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is put-up)(eq ?f1:value students)(eq ?f1:compare-value request-for-make-up-examination-along-with))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307790578-0
?adr<-(rules (fact-is attach)(compare-value opinion-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is miss)(value students)(compare-value exam-due-to-medical-reason))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is miss)(eq ?f1:value students)(eq ?f1:compare-value exam-due-to-medical-reason))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307792168-0
?adr<-(rules (fact-is be)(value decision)(compare-value final))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-reviewed-approved)(value genuineness)(compare-value vice-chancellor))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-reviewed-approved)(eq ?f1:value genuineness)(eq ?f1:compare-value vice-chancellor))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307793698-0
?adr<-(rules (fact-is be-notified)(value end-sem-exam-dates)(compare-value academic-calendar))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-scheduled)(value make-up-examination)(compare-value t2))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-scheduled)(eq ?f1:value make-up-examination)(eq ?f1:compare-value t2))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307796768-0
?adr<-(rules (fact-is be-allotted-below:)(value marks))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is even)(value student-miss-t1-t2-examination)(compare-value genuine-reason))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is even)(eq ?f1:value student-miss-t1-t2-examination)(eq ?f1:compare-value genuine-reason))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307798328-0
?adr<-(rules (fact-is be)(value examination-irrespective-of-make-up-for-t1-t-duration-of-exam)(compare-value 1-hour-60))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is cover)(value exam)(compare-value syllabus))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is cover)(eq ?f1:value exam)(eq ?f1:compare-value syllabus))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307799878-0
?adr<-(rules (fact-is be-notified)(compare-value registry-after))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is approved)(value genuine)(compare-value cases))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is approved)(eq ?f1:value genuine)(eq ?f1:compare-value cases))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307802948-0
?adr<-(rules (fact-is be-put)(value requests)(compare-value supervisors-to-hods-alternate-date))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is considered)(compare-value genuine))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is considered)(eq ?f1:compare-value genuine)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307804988-0
?adr<-(rules (fact-is missing-specified)(compare-value examination))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-adopted)(value procedure-to)(compare-value students-in-case-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-adopted)(eq ?f1:value procedure-to)(eq ?f1:compare-value students-in-case-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307806498-0
?adr<-(rules (fact-is be-adopted-establishing)(compare-value genuineness-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is following)(compare-value procedure))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is following)(eq ?f1:compare-value procedure)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307809578-0
?adr<-(rules (fact-is written)(compare-value communication-by-speed-post))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value it)(compare-value email-at-registrar@jiitacin))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value it)(eq ?f1:compare-value email-at-registrar@jiitacin))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307812098-0
?adr<-(rules (fact-is be-sent-prior-to)(compare-value examination))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is said)(compare-value report))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is said)(eq ?f1:compare-value report)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307816178-0
?adr<-(rules (fact-is arrange)(compare-value medical-documents-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-anticipated)(value case-delay-beyond-5-days)(compare-value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-anticipated)(eq ?f1:value case-delay-beyond-5-days)(eq ?f1:compare-value student))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307819258-0
?adr<-(rules (fact-is written)(compare-value sanction-of-vc-in-absence-dean-mandatory))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has-to-miss)(value action-by-students-any-other-reason-in-case-student)(compare-value examination-due-to-genuine-reason-other-than-medical))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has-to-miss)(eq ?f1:value action-by-students-any-other-reason-in-case-student)(eq ?f1:compare-value examination-due-to-genuine-reason-other-than-medical))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307822798-0
?adr<-(rules (fact-is have-no-right-to-appeal)(value vc-student)(compare-value same))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value important:-approving-genuineness-in-case)(compare-value prerogative-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value important:-approving-genuineness-in-case)(eq ?f1:compare-value prerogative-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307826848-0
?adr<-(rules (fact-is are)(value due-to-attendance-indulging-in-ufm)(compare-value eligible-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is debarred)(value eligibility-students-with-‘f’-grade-except)(compare-value cases))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is debarred)(eq ?f1:value eligibility-students-with-‘f’-grade-except)(eq ?f1:compare-value cases))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307830418-0
?adr<-(rules (fact-is covered)(compare-value semester))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is cover)(value supplementary-examinations)(compare-value entire-syllabus))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is cover)(eq ?f1:value supplementary-examinations)(eq ?f1:compare-value entire-syllabus))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307832468-0
?adr<-(rules (fact-is obtained)(compare-value students-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-determined)(value grade)(compare-value basis-of-marks))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-determined)(eq ?f1:value grade)(eq ?f1:compare-value basis-of-marks))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307836018-0
?adr<-(rules (fact-is are-allowed-to-take)(compare-value supplementary))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fail)(value supplementary-of-laboratory-courses--students)(compare-value practical-subjects))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fail)(eq ?f1:value supplementary-of-laboratory-courses--students)(eq ?f1:compare-value practical-subjects))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307839098-0
?adr<-(rules (fact-is be-up-to)(compare-value c+-four-grades))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is awarded)(value maximum-grade)(compare-value supplementary-examination))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is awarded)(eq ?f1:value maximum-grade)(eq ?f1:compare-value supplementary-examination))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307840638-0
?adr<-(rules (fact-is have-to-register)(compare-value fresh-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is get)(value students)(compare-value f-grade))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is get)(eq ?f1:value students)(eq ?f1:compare-value f-grade))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307843708-0
?adr<-(rules (fact-is be-informed)(compare-value same-extra-time-of-10-12-days))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fail)(compare-value students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fail)(eq ?f1:compare-value students)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307846248-0
?adr<-(rules (fact-is failed)(value treatment-of)(compare-value students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fails)(value student)(compare-value supplementary-examination-to-for-subject-in-immediate-following-corresponding-regular-semester-subject-offer))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fails)(eq ?f1:value student)(eq ?f1:compare-value supplementary-examination-to-for-subject-in-immediate-following-corresponding-regular-semester-subject-offer))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307849268-0
?adr<-(rules (fact-is be)(value semester)(compare-value eligible-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is failed-debarred-appearing)(value student)(compare-value end-semester-exam-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is failed-debarred-appearing)(eq ?f1:value student)(eq ?f1:compare-value end-semester-exam-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307852278-0
?adr<-(rules (fact-is offered-initially)(value courses)(compare-value summer-term-at-discretion-of-institute))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value registration-in-course)(compare-value less-than-5-students-upto-3-days-to-of-summer-term))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value registration-in-course)(eq ?f1:compare-value less-than-5-students-upto-3-days-to-of-summer-term))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307854308-0
?adr<-(rules (fact-is complete)(compare-value industrial-internship-training-during))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-required-to-give)(value students)(compare-value undertaking-that))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-required-to-give)(eq ?f1:value students)(eq ?f1:compare-value undertaking-that))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307855828-0
?adr<-(rules (fact-is doing)(compare-value summer-courses))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-provided)(value relaxation)(compare-value attendance-requirement-while))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-provided)(eq ?f1:value relaxation)(eq ?f1:compare-value attendance-requirement-while))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307867548-0
?adr<-(rules (fact-is issued)(value original-certificate)(compare-value mooc-authorities-along-with))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is submit-to)(value student)(compare-value registrar))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is submit-to)(eq ?f1:value student)(eq ?f1:compare-value registrar))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307869098-0
?adr<-(rules (fact-is be-kept)(value photocopy)(compare-value records))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-returned)(value original)(compare-value verification-verification-by-registrar-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-returned)(eq ?f1:value original)(eq ?f1:compare-value verification-verification-by-registrar-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307873238-0
?adr<-(rules (fact-is have-to-ensure)(compare-value presence-before-results))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is seeing)(value students-desirous-of)(compare-value marked-answer-scripts-of-end-semester-exam))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is seeing)(eq ?f1:value students-desirous-of)(eq ?f1:compare-value marked-answer-scripts-of-end-semester-exam))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307875778-0
?adr<-(rules (fact-is be-charged)(compare-value students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is decided)(value fee-of-rs-1000-per-subject-as)(compare-value board-from-time-to-time))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is decided)(eq ?f1:value fee-of-rs-1000-per-subject-as)(eq ?f1:compare-value board-from-time-to-time))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307886938-0
?adr<-(rules (fact-is plan-register)(value student-to)(compare-value backlog-courses))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value it)(compare-value responsibility-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value it)(eq ?f1:compare-value responsibility-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307890498-0
?adr<-(rules (fact-is be-allowed)(value students)(compare-value registration-for-backlog-subjects))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value number-of-students)(compare-value less-than-5-course-on-offer-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value number-of-students)(eq ?f1:compare-value less-than-5-course-on-offer-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307892048-0
?adr<-(rules (fact-is be-provided)(value subject-with)(compare-value one-contact-hour-per-week))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-allotted)(value such-students)(compare-value tutor-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-allotted)(eq ?f1:value such-students)(eq ?f1:compare-value tutor-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307893538-0
?adr<-(rules (fact-is carry)(compare-value assignment-studies))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is assigned)(value guidance-of)(compare-value tutor))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is assigned)(eq ?f1:value guidance-of)(eq ?f1:compare-value tutor))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307895078-0
?adr<-(rules (fact-is be-conducted)(compare-value normal-weightages))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is ta)(value t2-end-semester-exam)(compare-value component))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is ta)(eq ?f1:value t2-end-semester-exam)(eq ?f1:compare-value component))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307897108-0
?adr<-(rules (fact-is notified)(value delete-courses-from-list-of-registered-courses-on-before-date)(compare-value academic-calendar))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value addition-deletion-withdrawal-from-courses-student)(compare-value option-to-add-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value addition-deletion-withdrawal-from-courses-student)(eq ?f1:compare-value option-to-add-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307901300-0
?adr<-(rules (fact-is be-declared)(compare-value pass))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is obtaining)(value award-of-grades-students)(compare-value grades-to-d))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is obtaining)(eq ?f1:value award-of-grades-students)(eq ?f1:compare-value grades-to-d))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307903082-0
?adr<-(rules (fact-is be-awarded)(compare-value f-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is failing)(value students)(compare-value subject))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is failing)(eq ?f1:value students)(eq ?f1:compare-value subject))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307907152-0
?adr<-(rules (fact-is is)(compare-value minimum-passing-grade-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is stands)(value d-grade-‘d’-grade)(compare-value marginal-performance-ie))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is stands)(eq ?f1:value d-grade-‘d’-grade)(eq ?f1:compare-value marginal-performance-ie))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307909682-0
?adr<-(rules (fact-is attendance)(compare-value rules))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-also-awarded)(value ‘f’-grade)(compare-value case-of-poor-attendance-see))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-also-awarded)(eq ?f1:value ‘f’-grade)(eq ?f1:compare-value case-of-poor-attendance-see))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307911722-0
?adr<-(rules (fact-is take)(compare-value same-course))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have-been-obtained)(value other-courses-in-‘f’-grades)(compare-value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have-been-obtained)(eq ?f1:value other-courses-in-‘f’-grades)(eq ?f1:compare-value student))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307912812-0
?adr<-(rules (fact-is is-awarded-to)(value w-grade-w-grade)(compare-value student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-allowed-to-withdraw)(value he/she)(compare-value entire-semester))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-allowed-to-withdraw)(eq ?f1:value he/she)(eq ?f1:compare-value entire-semester))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307919662-0
?adr<-(rules (fact-is have-to-register)(value students-desirous-of-improvement-of-grades-in-subject)(compare-value time-of-registration-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-allowed-only)(value grade-improvement)(compare-value theory-subjects-in-subjects-like-minor-projects-major-projects-projects-seminars-laboratory-courses-term-paper-colloquium))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-allowed-only)(eq ?f1:value grade-improvement)(eq ?f1:compare-value theory-subjects-in-subjects-like-minor-projects-major-projects-projects-seminars-laboratory-courses-term-paper-colloquium))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307924302-0
?adr<-(rules (fact-is undertaking)(compare-value subject-for-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-paid)(value additional-fee)(compare-value student-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-paid)(eq ?f1:value additional-fee)(eq ?f1:compare-value student-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307929922-0
?adr<-(rules (fact-is obtained)(value grade)(compare-value improvement))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is taken)(value final-result-of-subject)(compare-value improvement-of-grade))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is taken)(eq ?f1:value final-result-of-subject)(eq ?f1:compare-value improvement-of-grade))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307931422-0
?adr<-(rules (fact-is be)(compare-value eligible-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is having-undertaken)(value student)(compare-value improvement-of-grades-option))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is having-undertaken)(eq ?f1:value student)(eq ?f1:compare-value improvement-of-grades-option))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307932932-0
?adr<-(rules (fact-is be-re-sorted)(compare-value such-cases:))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is following)(compare-value documentation))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is following)(eq ?f1:compare-value documentation)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307937492-0
?adr<-(rules (fact-is be-declared-promoted-to)(compare-value next-class))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value students-admitted-in-after-academic-year-2011-student)(compare-value cgpa-of-at-least-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value students-admitted-in-after-academic-year-2011-student)(eq ?f1:compare-value cgpa-of-at-least-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307947172-0
?adr<-(rules (fact-is have)(compare-value 28-hours-of-practical-work))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value 3-1-course)(compare-value 42-hours-of-theory-14-tutorials-while-0-0-2-practical-lab-course))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value 3-1-course)(eq ?f1:compare-value 42-hours-of-theory-14-tutorials-while-0-0-2-practical-lab-course))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307948732-0
?adr<-(rules (fact-is are-expected-to-be)(value undergraduate-students)(compare-value present-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is attendance)(compare-value rules))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is attendance)(eq ?f1:compare-value rules)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307950262-0
?adr<-(rules (fact-is taken-together)(value course-during-semester-in-lectures-tutorials)(compare-value practical-courses))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value student)(compare-value minimum-attendance-of-80%-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value student)(eq ?f1:compare-value minimum-attendance-of-80%-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307951812-0
?adr<-(rules (fact-is be-debarred-appearing)(value course-irrespective-of-performance-in-tests)(compare-value supplementary-exam))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-awarded)(value student-with-less-than-80%-attendance-in-course)(compare-value ‘f’-grade-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-awarded)(eq ?f1:value student-with-less-than-80%-attendance-in-course)(eq ?f1:compare-value ‘f’-grade-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307953372-0
?adr<-(rules (fact-is take)(compare-value account))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is awarding)(value course-coordinator-while)(compare-value grades))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is awarding)(eq ?f1:value course-coordinator-while)(eq ?f1:compare-value grades))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307954902-0
?adr<-(rules (fact-is is)(value number-of-days)(compare-value medical-other-leave-for-reason))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is meet)(value student)(compare-value above-attendance-requirement-irrespective-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is meet)(eq ?f1:value student)(eq ?f1:compare-value above-attendance-requirement-irrespective-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307956402-0
?adr<-(rules (fact-is be-taken-scheduled)(value particular-course-roll-call)(compare-value lecture-tutorial-practical-class))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is maintain)(value order-to)(compare-value attendance-record-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is maintain)(eq ?f1:value order-to)(eq ?f1:compare-value attendance-record-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307957962-0
?adr<-(rules (fact-is scheduled)(value purpose-of-attendance)(compare-value class))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is taking)(value teacher-device-other-method-of)(compare-value attendance-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is taking)(eq ?f1:value teacher-device-other-method-of)(eq ?f1:compare-value attendance-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307959472-0
?adr<-(rules (fact-is supported)(value continuous-illness-of-two-weeks-more)(compare-value proper-medical-certificate))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-given-following)(value relaxation-of-to-5%)(compare-value special-grounds:))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-given-following)(eq ?f1:value relaxation-of-to-5%)(eq ?f1:compare-value special-grounds:))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307963072-0
?adr<-(rules (fact-is has-submitted)(value basis-of-medical-advice-after-due-approval-of-dean-vice-chancellor)(compare-value authentic-medical-record))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has-been)(value semester-withdrawal-in-medical-cases-student)(compare-value absent-from-classes-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has-been)(eq ?f1:value semester-withdrawal-in-medical-cases-student)(eq ?f1:compare-value absent-from-classes-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307965622-0
?adr<-(rules (fact-is be-taken)(compare-value minimum-30-days-before))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is take)(value decision-to)(compare-value semester-withdrawal))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is take)(eq ?f1:value decision-to)(eq ?f1:compare-value semester-withdrawal))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307966632-0
?adr<-(rules (fact-is /-continue-to-be-registered-be-evaluated)(value he)(compare-value performance))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is does-not-apply)(value student)(compare-value same))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is does-not-apply)(eq ?f1:value student)(eq ?f1:compare-value same))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307968122-0
?adr<-(rules (fact-is inform)(value semester-student)(compare-value dean-academic))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is regarding)(value information)(compare-value absence-during))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is regarding)(eq ?f1:value information)(eq ?f1:compare-value absence-during))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307975792-0
?adr<-(rules (fact-is be-given-to)(value fresh-answer-book)(compare-value student-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is completing)(compare-value above-formalities))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is completing)(eq ?f1:compare-value above-formalities)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307976792-0
?adr<-(rules (fact-is be-recorded-prescribed)(value same)(compare-value form))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is does-not-hand)(value student)(compare-value relevant-material-/-to-form))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is does-not-hand)(eq ?f1:value student)(eq ?f1:compare-value relevant-material-/-to-form))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307983412-0
?adr<-(rules (fact-is nominated)(value 2--two-professors)(compare-value vc-members-head-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be:)(value composition-of-committee)(compare-value dean-aandr-chairman))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be:)(eq ?f1:value composition-of-committee)(eq ?f1:compare-value dean-aandr-chairman))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307985452-0
?adr<-(rules (fact-is laying-clearly)(compare-value nature-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is submit)(value it)(compare-value recommendations-after))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is submit)(eq ?f1:value it)(eq ?f1:compare-value recommendations-after))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307986952-0
?adr<-(rules (fact-is be-taken)(compare-value different-categories-of-offences))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-established-following)(value categories-of-offences-punishments-for-student-guilt)(compare-value actions))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-established-following)(eq ?f1:value categories-of-offences-punishments-for-student-guilt)(eq ?f1:compare-value actions))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307988492-0
?adr<-(rules (fact-is going-to)(value examination-hall-before-submission-of-answer-sheet-eg-while)(compare-value wash-room))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-found-to-be-talking-to)(value student)(compare-value person-outside))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-found-to-be-talking-to)(eq ?f1:value student)(eq ?f1:compare-value person-outside))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307991532-0
?adr<-(rules (fact-is take)(value invigilator-in-charge-of-room-hall)(compare-value possession-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value action-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value action-to)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307993072-0
?adr<-(rules (fact-is is-being-cancelled-provide)(compare-value student-with))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-informed)(value student)(compare-value first-answer-sheet))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-informed)(eq ?f1:value student)(eq ?f1:compare-value first-answer-sheet))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307996602-0
?adr<-(rules (fact-is arise)(value dean-as)(compare-value evaluation-exercise))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is report)(value examiners)(compare-value such-cases-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is report)(eq ?f1:value examiners)(eq ?f1:compare-value such-cases-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494307999122-0
?adr<-(rules (fact-is be-cancelled-awarded)(value examination-of-concerned-paper-to)(compare-value zero-marks))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value action-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value action-to)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308004212-0
?adr<-(rules (fact-is be-awarded-fail)(compare-value grade-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value action-to)(compare-value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value action-to)(eq ?f1:compare-value student))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308006742-0
?adr<-(rules (fact-is being)(value books-while)(compare-value out-side))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-consulting)(compare-value notes))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-consulting)(eq ?f1:compare-value notes)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308010792-0
?adr<-(rules (fact-is connected)(value examiner-anybody)(compare-value institute-examination-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is communicating-attempting-to-communicate-directly)(compare-value someone))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is communicating-attempting-to-communicate-directly)(eq ?f1:compare-value someone)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308012292-0
?adr<-(rules (fact-is destroying)(compare-value note))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(compare-value guilty-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:compare-value guilty-of)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308013872-0
?adr<-(rules (fact-is be-cancelled)(value examinations-of-registered-courses-for-semester-to)(compare-value student-to-from-in-supplementary-examinations-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value action-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value action-to)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308016422-0
?adr<-(rules (fact-is be-cancelled)(value examination-to)(compare-value semester-student-to-from-for-institute-examination-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value action-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value action-to)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308022542-0
?adr<-(rules (fact-is be-cancelled-to-be-further)(value examinations-of-semester-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value action-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value action-to)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308024092-0
?adr<-(rules (fact-is found-committing-abetting)(value examination)(compare-value committal-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-not)(value category-of-offence-person)(compare-value candidate-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-not)(eq ?f1:value category-of-offence-person)(eq ?f1:compare-value candidate-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308025092-0
?adr<-(rules (fact-is be)(value action-to)(compare-value taken:-to-with-vice-chancellor-in-appropriate-manner-expulsion-from-institute))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value he/she)(compare-value student-of-institute))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value he/she)(eq ?f1:compare-value student-of-institute))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308028122-0
?adr<-(rules (fact-is awarded-so-far)(value severe-punishment)(compare-value ufm-cases-against))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value action-to)(compare-value taken:-one-step-higher-punishment-than))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value action-to)(eq ?f1:compare-value taken:-one-step-higher-punishment-than))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308031672-0
?adr<-(rules (fact-is have-been-detected)(value examination)(compare-value examination-declaration-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be:-have-occurred)(value offences)(compare-value examination))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be:-have-occurred)(eq ?f1:value offences)(eq ?f1:compare-value examination))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308033212-0
?adr<-(rules (fact-is standing)(value departmentinstitute)(compare-value committee-as))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have-been-found-to-be)(value penalty-in-such-cases-of-unfair-means-plagiarism)(compare-value true-by-appropriate-committees-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have-been-found-to-be)(eq ?f1:value penalty-in-such-cases-of-unfair-means-plagiarism)(eq ?f1:compare-value true-by-appropriate-committees-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308034722-0
?adr<-(rules (fact-is considering)(value vice--chancellor-after)(compare-value full-facts-report-on-matter-same-penalty))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value imposition-of-such-penalty)(compare-value discretion-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value imposition-of-such-penalty)(eq ?f1:compare-value discretion-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308037302-0
?adr<-(rules (fact-is be)(value examination-student-statement-of-student:-signature-of-student-date-time-______________________-statement-of-invigilator:-record-circumstances-of-offences-in-brief-statement)(compare-value definite-unambiguous))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-signed)(value attach:-all-materials)(compare-value invigilator-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-signed)(eq ?f1:value attach:-all-materials)(eq ?f1:compare-value invigilator-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308043352-0
?adr<-(rules (fact-is be-reflected)(value academic-year)(compare-value proficiency-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-evaluated)(value adherence-to-discipline-norms)(compare-value end-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-evaluated)(eq ?f1:value adherence-to-discipline-norms)(eq ?f1:compare-value end-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308044382-0
?adr<-(rules (fact-is be)(value procedure-for-processing-cases-of-indiscipline-student)(compare-value guilty-of-misconduct-breach-of-discipline))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is violates)(value he)(compare-value provisions-of-standing-orders-by-institute))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is violates)(eq ?f1:value he)(eq ?f1:compare-value provisions-of-standing-orders-by-institute))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308045872-0
?adr<-(rules (fact-is considering)(compare-value case))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is received-observed-be-referred-to)(value case-of-indiscipline)(compare-value dean-students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is received-observed-be-referred-to)(eq ?f1:value case-of-indiscipline)(eq ?f1:compare-value dean-students))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308048912-0
?adr<-(rules (fact-is suspend)(value vice-chancellor)(compare-value student-for-act-of-indiscipline-detrimental-to-healthy-atmosphere-/-law-order-in-campus))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is exists)(value his-judgment-prima-facie-case-of-breach-of-discipline)(compare-value student-institute-inquiry-by-proctorial-board))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is exists)(eq ?f1:value his-judgment-prima-facie-case-of-breach-of-discipline)(eq ?f1:compare-value student-institute-inquiry-by-proctorial-board))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308050472-0
?adr<-(rules (fact-is containing)(compare-value substance-of-charge-imputation))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is issue)(value procedure-for-enquiry-proctorial-board-on-receipt-of-case)(compare-value notice))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is issue)(eq ?f1:value procedure-for-enquiry-proctorial-board-on-receipt-of-case)(eq ?f1:compare-value notice))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308052012-0
?adr<-(rules (fact-is appear)(value student)(compare-value committee-in-person-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is specify)(value notice)(compare-value date-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is specify)(eq ?f1:value notice)(eq ?f1:compare-value date-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308053582-0
?adr<-(rules (fact-is submit)(value incident)(compare-value report))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is examining-charged)(value committee)(compare-value student-such-other-persons-testimony-bearing-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is examining-charged)(eq ?f1:value committee)(eq ?f1:compare-value student-such-other-persons-testimony-bearing-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308055602-0
?adr<-(rules (fact-is decide)(value enquiry-committee)(compare-value quantum-of-punishment-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is consider)(value dswvice-chancellor)(compare-value report-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is consider)(eq ?f1:value dswvice-chancellor)(eq ?f1:compare-value report-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308057612-0
?adr<-(rules (fact-is proposes-to-take)(value charges-proposed-penalty-clauses-under-institute)(compare-value action))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is inform)(value case-of-proposed-punishment-of-rustication-expulsion-registrar)(compare-value student-in-writing-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is inform)(eq ?f1:value case-of-proposed-punishment-of-rustication-expulsion-registrar)(eq ?f1:compare-value student-in-writing-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308059132-0
?adr<-(rules (fact-is cause”-why-proposed)(value “show)(compare-value penalty))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-given)(value student)(compare-value 5-days-notice-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-given)(eq ?f1:value student)(eq ?f1:compare-value 5-days-notice-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308061652-0
?adr<-(rules (fact-is be-presumed)(compare-value student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-received)(value case-reply)(compare-value stipulated-time))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-received)(eq ?f1:value case-reply)(eq ?f1:compare-value stipulated-time))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308066232-0
?adr<-(rules (fact-is suspended)(compare-value fine-operative))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-found)(value concerned-student)(compare-value guilty-of-act-of-indiscipline-during-remaining-period-of-study-in-institute))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-found)(eq ?f1:value concerned-student)(eq ?f1:compare-value guilty-of-act-of-indiscipline-during-remaining-period-of-study-in-institute))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308070312-0
?adr<-(rules (fact-is forfeit)(compare-value amount))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-expelled)(value student)(compare-value hostel-on-disciplinary-ground))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-expelled)(eq ?f1:value student)(eq ?f1:compare-value hostel-on-disciplinary-ground))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308073382-0
?adr<-(rules (fact-is be-required-to-apply)(compare-value afresh-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is expelled)(value student)(compare-value complete-semester))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is expelled)(eq ?f1:value student)(eq ?f1:compare-value complete-semester))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308075432-0
?adr<-(rules (fact-is awarded)(value disciplinary-group-of-marks-disciplinary-grade)(compare-value end-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is awarding)(value procedure-for)(compare-value grades-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is awarding)(eq ?f1:value procedure-for)(eq ?f1:compare-value grades-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308076932-0
?adr<-(rules (fact-is get)(value student)(compare-value a+-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-recorded)(value act-of-indiscipline))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-recorded)(eq ?f1:value act-of-indiscipline)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308078422-0
?adr<-(rules (fact-is awarded-are-given)(compare-value table))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-deducted)(value guideline-maximum-marks-to)(compare-value offences-punishment))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-deducted)(eq ?f1:value guideline-maximum-marks-to)(eq ?f1:compare-value offences-punishment))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308079932-0
?adr<-(rules (fact-is be-dealt)(value complete-as-case)(compare-value own-merit-by-competent-authority))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-neither)(value list)(compare-value comprehensive))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-neither)(eq ?f1:value list)(eq ?f1:compare-value comprehensive))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308082982-0
?adr<-(rules (fact-is based)(compare-value overall-adherence-to-discipline-conduct-by-students-during-entire-programme))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is make)(value committee)(compare-value suitable-recommendation))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is make)(eq ?f1:value committee)(eq ?f1:compare-value suitable-recommendation))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308084992-0
?adr<-(rules (fact-is displayed)(compare-value notice-boards-in-usual-manner))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-notified)(value amendments-additions-to-standing-orders)(compare-value notices))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-notified)(eq ?f1:value amendments-additions-to-standing-orders)(eq ?f1:compare-value notices))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308098652-0
?adr<-(rules (fact-is decided)(value monetary-fine-as)(compare-value time-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is invite)(value loss-of-i-card)(compare-value fine-in-disciplinary-grade))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is invite)(eq ?f1:value loss-of-i-card)(eq ?f1:compare-value fine-in-disciplinary-grade))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308103232-0
?adr<-(rules (fact-is are)(value classes)(compare-value liable-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fail-to-make)(value students)(compare-value sufficient-progress-in-studies-attendance-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fail-to-make)(eq ?f1:value students)(eq ?f1:compare-value sufficient-progress-in-studies-attendance-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308104262-0
?adr<-(rules (fact-is be-regarded)(value it)(compare-value mass-absenteeism-act-of-indiscipline))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are)(value particular-class/period-than-50%-students)(compare-value absent))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are)(eq ?f1:value particular-class/period-than-50%-students)(eq ?f1:compare-value absent))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308105742-0
?adr<-(rules (fact-is indulging)(compare-value mass))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-taken)(value disciplinary-action)(compare-value students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-taken)(eq ?f1:value disciplinary-action)(eq ?f1:compare-value students))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308107272-0
?adr<-(rules (fact-is issued)(compare-value university))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is disobey)(value student)(compare-value order))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is disobey)(eq ?f1:value student)(eq ?f1:compare-value order))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308113372-0
?adr<-(rules (fact-is threaten)(value examinations-tests-attempt)(compare-value staff-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is use)(value students)(compare-value unfair-means-at))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is use)(eq ?f1:value students)(eq ?f1:compare-value unfair-means-at))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308116382-0
?adr<-(rules (fact-is render)(value they)(compare-value liable-to-penalties-as-in-force-from-time-to-time))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is do-not-do-so)(value they))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is do-not-do-so)(eq ?f1:value they)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308120032-0
?adr<-(rules (fact-is have-to-replace)(compare-value damaged-property-good))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is facing)(value such-student-in-addition-to)(compare-value disciplinary-action))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is facing)(eq ?f1:value such-student-in-addition-to)(eq ?f1:compare-value disciplinary-action))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308122562-0
?adr<-(rules (fact-is concerned)(value students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have-to-be-made)(value damage-breakage-of-such-equipment-etc-due-to-improper-use-of-negligent-handling)(compare-value good-by))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have-to-be-made)(eq ?f1:value damage-breakage-of-such-equipment-etc-due-to-improper-use-of-negligent-handling)(eq ?f1:compare-value good-by))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308129772-0
?adr<-(rules (fact-is be-denied)(compare-value entry-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is wearing)(value students)(compare-value prescribed-dress-code))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is wearing)(eq ?f1:value students)(eq ?f1:compare-value prescribed-dress-code))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308137564-0
?adr<-(rules (fact-is is-not-permitted-lead-to)(compare-value disciplinary-action))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is making)(value tearing-folding-cutting-of-library-books)(compare-value mark-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is making)(eq ?f1:value tearing-folding-cutting-of-library-books)(eq ?f1:compare-value mark-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308139134-0
?adr<-(rules (fact-is be-brought-to)(compare-value notice-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is noticed)(value defect)(compare-value time-of-borrowing-books))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is noticed)(eq ?f1:value defect)(eq ?f1:compare-value time-of-borrowing-books))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308143734-0
?adr<-(rules (fact-is be-deposited)(compare-value entrance-gate))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is belonging-to)(value personal-property-books-other-than)(compare-value lrc))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is belonging-to)(eq ?f1:value personal-property-books-other-than)(eq ?f1:compare-value lrc))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308146294-0
?adr<-(rules (fact-is report-to)(value new-student-on-arrival)(compare-value hostel-warden-administrator))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is standing)(compare-value orders-for-hostel-students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is standing)(eq ?f1:compare-value orders-for-hostel-students)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308147824-0
?adr<-(rules (fact-is occupying)(value hostel-inmates:-at-time-of)(compare-value room-student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is following-are-standing)(compare-value orders-for-compliance-by))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is following-are-standing)(eq ?f1:compare-value orders-for-compliance-by)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308152124-0
?adr<-(rules (fact-is including)(compare-value laptops))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is ensure)(value they)(compare-value valuables))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is ensure)(eq ?f1:value they)(eq ?f1:compare-value valuables))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308154204-0
?adr<-(rules (fact-is enter-leave)(value security-staff-time)(compare-value hostel-gate))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is show)(value students)(compare-value id-card-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is show)(eq ?f1:value students)(eq ?f1:compare-value id-card-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308156774-0
?adr<-(rules (fact-is including)(compare-value rustication-from))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is invoke)(value violation)(compare-value severe-penalty))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is invoke)(eq ?f1:value violation)(eq ?f1:compare-value severe-penalty))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308158774-0
?adr<-(rules (fact-is possessing)(value lethal-weapon-with-in-hostel-premises-though)(compare-value license-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-not-permitted-to-keep)(value students)(compare-value fire-arms))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-not-permitted-to-keep)(eq ?f1:value students)(eq ?f1:compare-value fire-arms))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308161874-0
?adr<-(rules (fact-is cabling)(compare-value outlets-fittings-additional-electrical-appliances))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fiddling)(value hostel-inmates)(compare-value electric-connections-computer))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fiddling)(eq ?f1:value hostel-inmates)(eq ?f1:compare-value electric-connections-computer))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308165954-0
?adr<-(rules (fact-is allotted-to)(compare-value hostel))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is permitted-be-allowed-to-occupy)(value students-unless)(compare-value rooms))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is permitted-be-allowed-to-occupy)(eq ?f1:value students-unless)(eq ?f1:compare-value rooms))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308169604-0
?adr<-(rules (fact-is hand)(compare-value charge-of-rooms))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is proceeding)(compare-value summer-vacation-students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is proceeding)(eq ?f1:compare-value summer-vacation-students)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308170604-0
?adr<-(rules (fact-is is-authorized-to-break)(value warden-/-administrator)(compare-value open-locked-room-inventory-of-articles))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fails-to-do-so)(value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fails-to-do-so)(eq ?f1:value student)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308173306-0
?adr<-(rules (fact-is take)(value nature-to-warden-administrator)(compare-value necessary-action))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is refer)(value hostel-inmates)(compare-value difficulties-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is refer)(eq ?f1:value hostel-inmates)(eq ?f1:compare-value difficulties-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308176876-0
?adr<-(rules (fact-is keep)(compare-value pets))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-allowed-to-engage)(value student)(compare-value private-servant))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-allowed-to-engage)(eq ?f1:value student)(eq ?f1:compare-value private-servant))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308182436-0
?adr<-(rules (fact-is specified)(compare-value times-unless))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value students)(compare-value present-in-respective-hostels-as-per))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value students)(eq ?f1:compare-value present-in-respective-hostels-as-per))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308183966-0
?adr<-(rules (fact-is allotted-to)(compare-value seven-days-of-registration))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is does-not-occupy)(value student)(compare-value hostel-room))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is does-not-occupy)(eq ?f1:value student)(eq ?f1:compare-value hostel-room))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308186036-0
?adr<-(rules (fact-is have-to-abide)(compare-value hostel-rules-in-vogue))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is staying)(value students)(compare-value hostels-during-summer-vacations))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is staying)(eq ?f1:value students)(eq ?f1:compare-value hostels-during-summer-vacations))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308188076-0
?adr<-(rules (fact-is prescribed)(value food-beyond)(compare-value timings-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is get)(value they)(compare-value entry))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is get)(eq ?f1:value they)(eq ?f1:compare-value entry))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308190116-0
?adr<-(rules (fact-is be-expelled)(compare-value hostel))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is found-indulged-ragging)(value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is found-indulged-ragging)(eq ?f1:value student)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308195409-0
?adr<-(rules (fact-is repeated)(compare-value offences))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-expelled)(value student)(compare-value hostel-in-case-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-expelled)(eq ?f1:value student)(eq ?f1:compare-value hostel-in-case-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308196949-0
?adr<-(rules (fact-is vacate)(value semester-as-such)(compare-value rooms-within-three-days-of-conclusion-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-charged)(value students)(compare-value hostel-fee-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-charged)(eq ?f1:value students)(eq ?f1:compare-value hostel-fee-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308198479-0
?adr<-(rules (fact-is attract)(value competent-authority)(compare-value disciplinary-action-payment-at-enhanced-rates-on-rates-as-by-authority-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is written)(value stay-beyond-without)(compare-value permission-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is written)(eq ?f1:value stay-beyond-without)(eq ?f1:compare-value permission-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308200029-0
?adr<-(rules (fact-is face)(compare-value disciplinary-action-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is violating)(value students)(compare-value above-guidelines))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is violating)(eq ?f1:value students)(eq ?f1:compare-value above-guidelines))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308208699-0
?adr<-(rules (fact-is be-de-registered)(value conditions-for-progression-termination-of-registration-student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is /-fails-to-meet-following)(value he)(compare-value criteria-for-continuation-of-program:-to-requirements-for-progression-as-in-academic-system-for-respective-phase’s))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is /-fails-to-meet-following)(eq ?f1:value he)(eq ?f1:compare-value criteria-for-continuation-of-program:-to-requirements-for-progression-as-in-academic-system-for-respective-phase’s))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494308211239-0
?adr<-(rules (fact-is fails-to-complete)(value student)(compare-value requirements-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-awarded)(value degree)(compare-value case))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-awarded)(eq ?f1:value degree)(eq ?f1:compare-value case))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495438805459-0
?adr<-(rules (fact-is develop)(compare-value sports-skills-in-various-outdoor-indoor-games-like-football-cricket-basketball-ball-badminton-courts-volley-ball-athletics-chess-swimming-carrom))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is encourages)(value sports-club)(compare-value students-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is encourages)(eq ?f1:value sports-club)(eq ?f1:compare-value students-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495438813477-0
?adr<-(rules (fact-is covering)(compare-value academic-block-business-school-cum-research-block-faculty-residences-student-hostels-annapurna))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is comprises)(value state-of-the-art-conditioned-campus)(compare-value smart-buildings-with-wi-fi-connectivity))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is comprises)(eq ?f1:value state-of-the-art-conditioned-campus)(eq ?f1:compare-value smart-buildings-with-wi-fi-connectivity))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495438816020-0
?adr<-(rules (fact-is cater)(compare-value demands-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is understand)(value we)(compare-value order-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is understand)(eq ?f1:value we)(eq ?f1:compare-value order-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495438920883-0
?adr<-(rules (fact-is get)(compare-value bachelors))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is entitle)(value dual-degree-programs)(compare-value students-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is entitle)(eq ?f1:value dual-degree-programs)(eq ?f1:compare-value students-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495438974563-0
?adr<-(rules (fact-is doing)(compare-value business-display-individual-corporate-social-responsibility-conscious-of-sustainable-business))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is look)(value mba-graduates-of-jbs)(compare-value ethical-way-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is look)(eq ?f1:value mba-graduates-of-jbs)(eq ?f1:compare-value ethical-way-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439001598-0
?adr<-(rules (fact-is set)(compare-value own))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is take)(value few-students)(compare-value challenge-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is take)(eq ?f1:value few-students)(eq ?f1:compare-value challenge-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439020162-0
?adr<-(rules (fact-is is)(value today)(compare-value team-of-nineteen))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is started)(value department)(compare-value single-faculty))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is started)(eq ?f1:value department)(eq ?f1:compare-value single-faculty))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439026230-0
?adr<-(rules (fact-is conferences)(value research-work-workshops-faculty-development-programs-guest-lectures))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is need-to-update)(value we))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is need-to-update)(eq ?f1:value we)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439037369-0
?adr<-(rules (fact-is involved)(value broader-social-cultural-economic-ethical-humane-issues)(compare-value social-change))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-meant-to-sensitize-to)(value they))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-meant-to-sensitize-to)(eq ?f1:value they)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439064341-0
?adr<-(rules (fact-is interested)(compare-value other-related-areas))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is given-below-be-pref-erred-however)(value research-scholars-in-areas)(compare-value scholars))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is given-below-be-pref-erred-however)(eq ?f1:value research-scholars-in-areas)(eq ?f1:compare-value scholars))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439147411-0
?adr<-(rules (fact-is acquainted)(compare-value placement-procedures-placement-records-of-university-to-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is was-not-only-to-make)(value motive-behind-talk)(compare-value students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is was-not-only-to-make)(eq ?f1:value motive-behind-talk)(eq ?f1:compare-value students))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439163041-0
?adr<-(rules (fact-is is-primed-to-be)(compare-value next-economic-powerhouse-only-country))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is spoke)(compare-value major-reasons))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is spoke)(eq ?f1:compare-value major-reasons)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439295305-0
?adr<-(rules (fact-is occurs)(value prevalent-form-of-plagiarism))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is neglects-to-credit)(value writer)(compare-value author-textual-sources-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is neglects-to-credit)(eq ?f1:value writer)(eq ?f1:compare-value author-textual-sources-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439300001-0
?adr<-(rules (fact-is be-merely)(compare-value due-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is do-not-want)(value we)(compare-value finding-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is do-not-want)(eq ?f1:value we)(eq ?f1:compare-value finding-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439341163-0
?adr<-(rules (fact-is file)(compare-value patent-various-govt))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is motivated)(value he)(compare-value audience-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is motivated)(eq ?f1:value he)(eq ?f1:compare-value audience-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439370713-0
?adr<-(rules (fact-is be-controlled)(value incurable-neurological-disorders-progression)(compare-value synthetic-drugs))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-considered)(value parkinson’s-disease)(compare-value one-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-considered)(eq ?f1:value parkinson’s-disease)(eq ?f1:compare-value one-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439392433-0
?adr<-(rules (fact-is work-motivate)(value way-scientists)(compare-value students-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is hoped)(value sharma)(compare-value exposure-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is hoped)(eq ?f1:value sharma)(eq ?f1:compare-value exposure-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439430283-0
?adr<-(rules (fact-is paid)(compare-value seats))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is do-not-fall)(compare-value prey-to-false-assurance-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is do-not-fall)(eq ?f1:compare-value prey-to-false-assurance-of)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439431853-0
?adr<-(rules (fact-is paid)(compare-value seats))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is do-not-fall)(compare-value prey-to-false-assurance-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is do-not-fall)(eq ?f1:compare-value prey-to-false-assurance-of)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439443673-0
?adr<-(rules (fact-is share)(compare-value 1400-eligible-students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are)(value we)(compare-value proud-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are)(eq ?f1:value we)(eq ?f1:compare-value proud-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439458233-0
?adr<-(rules (fact-is do-not-realize)(compare-value transiency-of-youth-on-glory-charm-second-youth-wake))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are)(compare-value two-categories:))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are)(eq ?f1:compare-value two-categories:)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439461475-0
?adr<-(rules (fact-is be)(value it)(compare-value fun))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-as)(value it)(compare-value comfortable-as-home?))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-as)(eq ?f1:value it)(eq ?f1:compare-value comfortable-as-home?))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439486767-0
?adr<-(rules (fact-is like-band)(compare-value events-street))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is participate)(value students-of-society)(compare-value inter-college-events))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is participate)(eq ?f1:value students-of-society)(eq ?f1:compare-value inter-college-events))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439491507-0
?adr<-(rules (fact-is gives)(value nukkad))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is gets-to)(value stage)(compare-value sentimentality-with-beautiful-subtlety-street))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is gets-to)(eq ?f1:value stage)(eq ?f1:compare-value sentimentality-with-beautiful-subtlety-street))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439493067-0
?adr<-(rules (fact-is has-helped)(compare-value team-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is existing)(compare-value warmth-care-that-members-for-other))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is existing)(eq ?f1:compare-value warmth-care-that-members-for-other)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439494107-0
?adr<-(rules (fact-is encourage)(compare-value freshers-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is conduct)(value we)(compare-value auditions-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is conduct)(eq ?f1:value we)(eq ?f1:compare-value auditions-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439497807-0
?adr<-(rules (fact-is are)(value domain)(compare-value confident-passionate-spark-in-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is welcome)(value we)(compare-value people-from))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is welcome)(eq ?f1:value we)(eq ?f1:compare-value people-from))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439499387-0
?adr<-(rules (fact-is collegiate)(compare-value success!))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value involvement)(compare-value key-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value involvement)(eq ?f1:compare-value key-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439500497-0
?adr<-(rules (fact-is connect)(compare-value students-faculty-staff-valuable-experience-to-resume))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is gain)(value you)(compare-value confidence-as))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is gain)(eq ?f1:value you)(eq ?f1:compare-value confidence-as))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439506267-0
?adr<-(rules (fact-is be)(compare-value life-of-dire-hardship))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is render)(value life-without-services))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is render)(eq ?f1:value life-without-services)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439514617-0
?adr<-(rules (fact-is understanding-existing)(compare-value gadgets-own-devices))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is assist)(value it)(compare-value students-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is assist)(eq ?f1:value it)(eq ?f1:compare-value students-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439521109-0
?adr<-(rules (fact-is be)(value multimedia-development)(compare-value area-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value you)(compare-value creative-desgn-skills))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value you)(eq ?f1:compare-value creative-desgn-skills))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439540463-0
?adr<-(rules (fact-is keeps)(compare-value evil-spirits))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is believe)(value they))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is believe)(eq ?f1:value they)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439551423-0
?adr<-(rules (fact-is experience-live)(value young-students-of-today-to)(compare-value passion))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is provides)(value other-hand)(compare-value ample-opportunities-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is provides)(eq ?f1:value other-hand)(eq ?f1:compare-value ample-opportunities-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439563504-0
?adr<-(rules (fact-is discussed)(value he)(compare-value consequences-that-in-near-future))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-not-taken)(value preventive-measures))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-not-taken)(eq ?f1:value preventive-measures)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439564034-0
?adr<-(rules (fact-is showed)(compare-value videos-on))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is substantiate)(compare-value points))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is substantiate)(eq ?f1:compare-value points)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439565604-0
?adr<-(rules (fact-is debate)(compare-value question-without))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value “it)(compare-value better-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value “it)(eq ?f1:compare-value better-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439606044-0
?adr<-(rules (fact-is have)(compare-value more-than-160-alumni-participants-from))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is was-indeed)(value it)(compare-value great-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is was-indeed)(eq ?f1:value it)(eq ?f1:compare-value great-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439607064-0
?adr<-(rules (fact-is sharing)(compare-value stage-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is resumed)(value tea-break-event)(compare-value alumni))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is resumed)(eq ?f1:value tea-break-event)(eq ?f1:compare-value alumni))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439612324-0
?adr<-(rules (fact-is are)(value ground-magical-atmosphere)(compare-value ready-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is glittering)(compare-value lights-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is glittering)(eq ?f1:compare-value lights-in)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439614434-0
?adr<-(rules (fact-is give)(compare-value tips-to-students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is conducted)(compare-value hr-workshop-campus-to-corporate-–-building-brand-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is conducted)(eq ?f1:compare-value hr-workshop-campus-to-corporate-–-building-brand-to)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439622354-0
?adr<-(rules (fact-is wear)(compare-value best-smile))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is come)(compare-value nostalgic-glow-on-face))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is come)(eq ?f1:compare-value nostalgic-glow-on-face)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439622874-0
?adr<-(rules (fact-is be-making)(compare-value first-year-book-hope-part-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-also-pleased-to-inform)(value we))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-also-pleased-to-inform)(eq ?f1:value we)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439623914-0
?adr<-(rules (fact-is fill)(compare-value quote-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is require-to)(value we))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is require-to)(eq ?f1:value we)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439624434-0
?adr<-(rules (fact-is show)(value movie)(compare-value originality-of-own))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is quote)(value you)(compare-value favourite-character-from))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is quote)(eq ?f1:value you)(eq ?f1:compare-value favourite-character-from))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439625454-0
?adr<-(rules (fact-is love-to-put)(compare-value name))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is reflects)(value it)(compare-value personality-smile-on-face-after-20-years))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is reflects)(eq ?f1:value it)(eq ?f1:compare-value personality-smile-on-face-after-20-years))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439634914-0
?adr<-(rules (fact-is have)(compare-value alumnus-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is were-also)(value we)(compare-value lucky-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is were-also)(eq ?f1:value we)(eq ?f1:compare-value lucky-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439660434-0
?adr<-(rules (fact-is identify-then-simplify)(compare-value challenging-issues))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is makes)(compare-value imperative-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is makes)(eq ?f1:compare-value imperative-to)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439663044-0
?adr<-(rules (fact-is given)(value courses)(compare-value undergraduate-postgraduate-levels))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is constitute)(value elementary-methods-of-numerical-computation)(compare-value important-ingredient-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is constitute)(eq ?f1:value elementary-methods-of-numerical-computation)(eq ?f1:compare-value important-ingredient-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439754414-0
?adr<-(rules (fact-is use)(compare-value blog-facility))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is want-to)(value we))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is want-to)(eq ?f1:value we)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439754944-0
?adr<-(rules (fact-is have-been-provided-to)(compare-value blog:))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is following)(compare-value options))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is following)(eq ?f1:compare-value options)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439755484-0
?adr<-(rules (fact-is write)(compare-value messages))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-where)(value a-“create-blog”))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-where)(eq ?f1:value a-“create-blog”)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439763454-0
?adr<-(rules (fact-is shared)(compare-value journey-with-that-many-more-such-success-stories))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is like-to-present)(value we)(compare-value success-stories-of-alumnus))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is like-to-present)(eq ?f1:value we)(eq ?f1:compare-value success-stories-of-alumnus))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439775854-0
?adr<-(rules (fact-is share)(compare-value registration-details-on-social-networking-sites))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is want-to)(value we))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is want-to)(eq ?f1:value we)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439776934-0
?adr<-(rules (fact-is hear)(compare-value success-stories-of-alumni-same-in-upcoming-newsletters))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-very)(value we)(compare-value proud-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-very)(eq ?f1:value we)(eq ?f1:compare-value proud-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439782704-0
?adr<-(rules (fact-is are)(compare-value ours-to-part-of-journey))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is cherish)(value we)(compare-value achievements-like))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is cherish)(eq ?f1:value we)(eq ?f1:compare-value achievements-like))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439853594-0
?adr<-(rules (fact-is driven)(compare-value impartial-rankings))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has-given)(value edu-rand)(compare-value first-scientific-data))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has-given)(eq ?f1:value edu-rand)(eq ?f1:compare-value first-scientific-data))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439884146-0
?adr<-(rules (fact-is has-been-obtained)(compare-value ugc-vide-letter-nof42-1))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is starting)(value necessary-approval-for)(compare-value extended-campus))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is starting)(eq ?f1:value necessary-approval-for)(eq ?f1:compare-value extended-campus))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495439922606-0
?adr<-(rules (fact-is cater)(compare-value demands-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is understand)(value we)(compare-value order-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is understand)(eq ?f1:value we)(eq ?f1:compare-value order-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495440278577-0
?adr<-(rules (fact-is bringing)(value researchers-towards)(compare-value newer-efficient-techniques))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is give)(value it)(compare-value impetus-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is give)(eq ?f1:value it)(eq ?f1:compare-value impetus-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495440338557-0
?adr<-(rules (fact-is be-required)(compare-value registration-purpose:))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is following)(compare-value information))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is following)(eq ?f1:compare-value information)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495440486697-0
?adr<-(rules (fact-is encountered)(compare-value solutions))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is proposes-to-discuss)(value it)(compare-value practical-challenges))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is proposes-to-discuss)(eq ?f1:value it)(eq ?f1:compare-value practical-challenges))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495462695997-0
?adr<-(rules (fact-is get)(compare-value bachelors))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is entitle)(value dual-degree-programs)(compare-value students-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is entitle)(eq ?f1:value dual-degree-programs)(eq ?f1:compare-value students-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495462702969-0
?adr<-(rules (fact-is paid)(compare-value seats))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is do-not-fall)(compare-value prey-to-false-assurance-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is do-not-fall)(eq ?f1:compare-value prey-to-false-assurance-of)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474704986-0
?adr<-(rules (fact-is share)(compare-value 1400-eligible-students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are)(value we)(compare-value proud-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are)(eq ?f1:value we)(eq ?f1:compare-value proud-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474867669-0
?adr<-(rules (fact-is like)(compare-value salaries-upto-rs-9-lac-pa))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is got)(value note:-183-students)(compare-value offers-with-more-than-70-companies))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is got)(eq ?f1:value note:-183-students)(eq ?f1:compare-value offers-with-more-than-70-companies))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474872851-0
?adr<-(rules (fact-is described)(value practices))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is using)(compare-value website-consent-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is using)(eq ?f1:compare-value website-consent-to)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474874134-0
?adr<-(rules (fact-is constitutes)(value privacy-policy)(compare-value acceptance-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is following)(value your-continued-use-of-website)(compare-value changes-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is following)(eq ?f1:value your-continued-use-of-website)(eq ?f1:compare-value changes-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474881727-0
?adr<-(rules (fact-is be-collected-used)(value it)(compare-value others))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is disclose)(value you)(compare-value personal-information-other-sensitive-data-through-such-channels))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is disclose)(eq ?f1:value you)(eq ?f1:compare-value personal-information-other-sensitive-data-through-such-channels))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474885803-0
?adr<-(rules (fact-is regarding)(value other-research)(compare-value opinion-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is use)(value we)(compare-value personal-information-to-contact-via-surveys))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is use)(eq ?f1:value we)(eq ?f1:compare-value personal-information-to-contact-via-surveys))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474889225-0
?adr<-(rules (fact-is account)(compare-value sign-up-process))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is informing)(value you-of-marketing-offers-from-business-partners-by))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is informing)(eq ?f1:value you-of-marketing-offers-from-business-partners-by)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474889922-0
?adr<-(rules (fact-is regarding)(compare-value changes))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is does-not-apply-to)(value your-opt-out)(compare-value communications-from-jbs))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is does-not-apply-to)(eq ?f1:value your-opt-out)(eq ?f1:compare-value communications-from-jbs))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474893685-0
?adr<-(rules (fact-is deliver)(compare-value viruses-to-computer))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-used-to-run)(value cookies)(compare-value programs))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-used-to-run)(eq ?f1:value cookies)(eq ?f1:compare-value programs))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474894416-0
?adr<-(rules (fact-is issued)(value domain)(compare-value cookie-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-uniquely-assigned-to-only-be-read)(value cookies)(compare-value web-server-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-uniquely-assigned-to-only-be-read)(eq ?f1:value cookies)(eq ?f1:compare-value web-server-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474895776-0
?adr<-(rules (fact-is accept-decline)(compare-value cookies))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value you)(compare-value ability-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value you)(eq ?f1:compare-value ability-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474897913-0
?adr<-(rules (fact-is understand)(compare-value user-preferences-advertisements-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is use)(value we)(compare-value third-parties-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is use)(eq ?f1:value we)(eq ?f1:compare-value third-parties-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474900613-0
?adr<-(rules (fact-is including)(compare-value limitation-communications))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-not-obligated-to-monitor-retain)(value we)(compare-value data-through-servers))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-not-obligated-to-monitor-retain)(eq ?f1:value we)(eq ?f1:compare-value data-through-servers))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474901302-0
?adr<-(rules (fact-is have)(compare-value expectation-of-privacy-with-respect-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is acknowledge-agree)(value you))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is acknowledge-agree)(eq ?f1:value you)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474904667-0
?adr<-(rules (fact-is result)(compare-value disclosure-of-personal-information))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are)(compare-value many-factors-beyond-control))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are)(eq ?f1:compare-value many-factors-beyond-control)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474905347-0
?adr<-(rules (fact-is relating-to)(value representations)(compare-value security-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is ensure-disclaim)(value result)(compare-value warranties))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is ensure-disclaim)(eq ?f1:value result)(eq ?f1:compare-value warranties))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474906708-0
?adr<-(rules (fact-is delete)(compare-value personal-information))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is review)(value you)(compare-value correct-update))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is review)(eq ?f1:value you)(eq ?f1:compare-value correct-update))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474908654-0
?adr<-(rules (fact-is be-deleted)(value age)(compare-value user-account-unless))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is please-note)(compare-value certain-personal-information-such-as-date-of-birth))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is please-note)(eq ?f1:compare-value certain-personal-information-such-as-date-of-birth)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1495474910029-0
?adr<-(rules (fact-is reserve)(value we)(compare-value right-to-personal-information-after-account-cancellation))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value such-information)(compare-value necessary-to-disputes-to-with-legal-requirements))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value such-information)(eq ?f1:compare-value necessary-to-disputes-to-with-legal-requirements))
(bind ?f ?f1))
)(join-ands ?f)
)


(defrule gen-gen-1494300521557-0
?adr<-(rules (fact-is be-completed-there-is)(value tutorial-practical-work)(compare-value scope-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is specifying)(compare-value time-limit-within))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is specifying)(eq ?f1:compare-value time-limit-within)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300523637-0
?adr<-(rules (fact-is be-accepted)(value tutorial-practical-session-time-up-to-late-submissions))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is notify)(value faculty)(compare-value penalty-for-late-submission-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is notify)(eq ?f1:value faculty)(eq ?f1:compare-value penalty-for-late-submission-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300531447-0
?adr<-(rules (fact-is put)(compare-value sustained-disciplined-work-over-entire-period-of-study))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-to-train)(compare-value student-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-to-train)(eq ?f1:compare-value student-to)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300533447-0
?adr<-(rules (fact-is be-allocated-to)(value balance-25%)(compare-value Assignments))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(compare-value total-weight-age-of-75%))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:compare-value total-weight-age-of-75%)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300543257-0
?adr<-(rules (fact-is appointed)(value week-on)(compare-value days-time))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is meet-report-to)(value students)(compare-value supervisors-at-least))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is meet-report-to)(eq ?f1:value students)(eq ?f1:compare-value supervisors-at-least))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300545317-0
?adr<-(rules (fact-is be-declared)(compare-value pass))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is obtaining)(value Grading-System:-Students)(compare-value grades-to-D))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is obtaining)(eq ?f1:value Grading-System:-Students)(eq ?f1:compare-value grades-to-D))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300546849-0
?adr<-(rules (fact-is be-awarded)(compare-value F-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is failing)(value Students)(compare-value subject))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is failing)(eq ?f1:value Students)(eq ?f1:compare-value subject))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300548419-0
?adr<-(rules (fact-is written)(value components-Theory-Three)(compare-value tests))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-decided)(value grades)(compare-value aggregate-of-evaluation-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-decided)(eq ?f1:value grades)(eq ?f1:compare-value aggregate-of-evaluation-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300553923-0
?adr<-(rules (fact-is be-debarred)(value he/she))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value attendance-profile-of-student)(compare-value unsatisfactory-as-in-rules-below))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value attendance-profile-of-student)(eq ?f1:compare-value unsatisfactory-as-in-rules-below))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300555463-0
?adr<-(rules (fact-is being-debarred)(compare-value due-to-attendance-shortage))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has-been-awarded)(value student)(compare-value F-grade-because-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has-been-awarded)(eq ?f1:value student)(eq ?f1:compare-value F-grade-because-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300557553-0
?adr<-(rules (fact-is allowing-make)(value policy-for)(compare-value examination-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is Make)(compare-value Examinations))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is Make)(eq ?f1:compare-value Examinations)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300559073-0
?adr<-(rules (fact-is prove)(value documents-to)(compare-value genuineness-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is put-up)(value students)(compare-value request-for-make-up-examination-along-with))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is put-up)(eq ?f1:value students)(eq ?f1:compare-value request-for-make-up-examination-along-with))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300560573-0
?adr<-(rules (fact-is attach)(compare-value opinion-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is miss)(value students)(compare-value exam-due-to-medical-reason))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is miss)(eq ?f1:value students)(eq ?f1:compare-value exam-due-to-medical-reason))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300562123-0
?adr<-(rules (fact-is be)(value decision)(compare-value final))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-reviewed-approved)(value genuineness)(compare-value Vice-Chancellor))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-reviewed-approved)(eq ?f1:value genuineness)(eq ?f1:compare-value Vice-Chancellor))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300563673-0
?adr<-(rules (fact-is be-notified)(value End-Sem-Exam-dates)(compare-value academic-calendar))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-scheduled)(value make-up-examination)(compare-value T2))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-scheduled)(eq ?f1:value make-up-examination)(eq ?f1:compare-value T2))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300566773-0
?adr<-(rules (fact-is be-allotted-below:)(value marks))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is even)(value student-miss-T1-T2-examination)(compare-value genuine-reason))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is even)(eq ?f1:value student-miss-T1-T2-examination)(eq ?f1:compare-value genuine-reason))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300568353-0
?adr<-(rules (fact-is be)(value examination-irrespective-of-make-up-for-T1-T-duration-of-exam)(compare-value 1-hour-60))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is cover)(value exam)(compare-value syllabus))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is cover)(eq ?f1:value exam)(eq ?f1:compare-value syllabus))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300569963-0
?adr<-(rules (fact-is be-notified)(compare-value Registry-after))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is approved)(value Genuine)(compare-value cases))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is approved)(eq ?f1:value Genuine)(eq ?f1:compare-value cases))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300573053-0
?adr<-(rules (fact-is be-put)(value requests)(compare-value supervisors-to-HODs-alternate-date))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is considered)(compare-value genuine))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is considered)(eq ?f1:compare-value genuine)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300575063-0
?adr<-(rules (fact-is missing-specified)(compare-value Examination))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-Adopted)(value Procedure-to)(compare-value students-in-case-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-Adopted)(eq ?f1:value Procedure-to)(eq ?f1:compare-value students-in-case-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300576607-0
?adr<-(rules (fact-is be-adopted-establishing)(compare-value genuineness-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is Following)(compare-value procedure))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is Following)(eq ?f1:compare-value procedure)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300579647-0
?adr<-(rules (fact-is written)(compare-value communication-by-speed-post))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value It)(compare-value email-at-registrar@jiitacin))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value It)(eq ?f1:compare-value email-at-registrar@jiitacin))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300582611-0
?adr<-(rules (fact-is be-sent-prior-to)(compare-value Examination))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is said)(compare-value report))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is said)(eq ?f1:compare-value report)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300586921-0
?adr<-(rules (fact-is arrange)(compare-value medical-documents-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-anticipated)(value case-delay-beyond-5-days)(compare-value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-anticipated)(eq ?f1:value case-delay-beyond-5-days)(eq ?f1:compare-value student))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300590031-0
?adr<-(rules (fact-is written)(compare-value sanction-of-VC-in-absence-Dean-mandatory))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has-to-miss)(value Action-by-students-any-other-reason-In-case-student)(compare-value Examination-due-to-genuine-reason-other-than-medical))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has-to-miss)(eq ?f1:value Action-by-students-any-other-reason-In-case-student)(eq ?f1:compare-value Examination-due-to-genuine-reason-other-than-medical))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300593601-0
?adr<-(rules (fact-is have-no-right-to-appeal)(value VC-student)(compare-value same))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value Important:-Approving-genuineness-in-case)(compare-value prerogative-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value Important:-Approving-genuineness-in-case)(eq ?f1:compare-value prerogative-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300597681-0
?adr<-(rules (fact-is are)(value due-to-attendance-indulging-in-UFM)(compare-value eligible-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is debarred)(value Eligibility-Students-with-‘F’-grade-Except)(compare-value cases))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is debarred)(eq ?f1:value Eligibility-Students-with-‘F’-grade-Except)(eq ?f1:compare-value cases))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300601231-0
?adr<-(rules (fact-is covered)(compare-value semester))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is cover)(value Supplementary-Examinations)(compare-value entire-syllabus))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is cover)(eq ?f1:value Supplementary-Examinations)(eq ?f1:compare-value entire-syllabus))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300603261-0
?adr<-(rules (fact-is obtained)(compare-value students-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-determined)(value Grade)(compare-value basis-of-marks))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-determined)(eq ?f1:value Grade)(eq ?f1:compare-value basis-of-marks))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300606831-0
?adr<-(rules (fact-is are-allowed-to-take)(compare-value supplementary))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fail)(value Supplementary-of-Laboratory-Courses--students)(compare-value practical-subjects))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fail)(eq ?f1:value Supplementary-of-Laboratory-Courses--students)(eq ?f1:compare-value practical-subjects))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300609891-0
?adr<-(rules (fact-is be-up-to)(compare-value C+-four-grades))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is awarded)(value maximum-grade)(compare-value supplementary-Examination))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is awarded)(eq ?f1:value maximum-grade)(eq ?f1:compare-value supplementary-Examination))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300611431-0
?adr<-(rules (fact-is have-to-register)(compare-value fresh-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is get)(value students)(compare-value F-grade))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is get)(eq ?f1:value students)(eq ?f1:compare-value F-grade))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300614451-0
?adr<-(rules (fact-is be-informed)(compare-value same-extra-time-of-10-12-days))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fail)(compare-value students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fail)(eq ?f1:compare-value students)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300617071-0
?adr<-(rules (fact-is failed)(value Treatment-of)(compare-value students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fails)(value student)(compare-value Supplementary-Examination-to-for-subject-in-immediate-following-corresponding-regular-semester-subject-offer))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fails)(eq ?f1:value student)(eq ?f1:compare-value Supplementary-Examination-to-for-subject-in-immediate-following-corresponding-regular-semester-subject-offer))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300620161-0
?adr<-(rules (fact-is be)(value Semester)(compare-value eligible-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is failed-debarred-appearing)(value Student)(compare-value End-Semester-Exam-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is failed-debarred-appearing)(eq ?f1:value Student)(eq ?f1:compare-value End-Semester-Exam-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300623231-0
?adr<-(rules (fact-is offered-initially)(value Courses)(compare-value summer-term-at-discretion-of-Institute))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value registration-in-course)(compare-value less-than-5-students-upto-3-days-to-of-summer-term))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value registration-in-course)(eq ?f1:compare-value less-than-5-students-upto-3-days-to-of-summer-term))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300625281-0
?adr<-(rules (fact-is complete)(compare-value industrial-internship-training-during))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-required-to-give)(value students)(compare-value undertaking-that))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-required-to-give)(eq ?f1:value students)(eq ?f1:compare-value undertaking-that))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300626821-0
?adr<-(rules (fact-is doing)(compare-value summer-courses))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-provided)(value relaxation)(compare-value attendance-requirement-while))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-provided)(eq ?f1:value relaxation)(eq ?f1:compare-value attendance-requirement-while))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300638439-0
?adr<-(rules (fact-is issued)(value original-certificate)(compare-value MOOC-authorities-along-with))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is submit-to)(value student)(compare-value Registrar))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is submit-to)(eq ?f1:value student)(eq ?f1:compare-value Registrar))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300639989-0
?adr<-(rules (fact-is be-kept)(value photocopy)(compare-value records))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-returned)(value original)(compare-value verification-verification-by-Registrar-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-returned)(eq ?f1:value original)(eq ?f1:compare-value verification-verification-by-Registrar-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300644039-0
?adr<-(rules (fact-is have-to-ensure)(compare-value presence-before-results))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is seeing)(value Students-desirous-of)(compare-value marked-answer-scripts-of-End-Semester-Exam))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is seeing)(eq ?f1:value Students-desirous-of)(eq ?f1:compare-value marked-answer-scripts-of-End-Semester-Exam))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300646559-0
?adr<-(rules (fact-is be-charged)(compare-value students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is decided)(value fee-of-Rs-1000-per-subject-as)(compare-value Board-from-time-to-time))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is decided)(eq ?f1:value fee-of-Rs-1000-per-subject-as)(eq ?f1:compare-value Board-from-time-to-time))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300657779-0
?adr<-(rules (fact-is plan-register)(value student-to)(compare-value Backlog-courses))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value It)(compare-value responsibility-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value It)(eq ?f1:compare-value responsibility-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300661279-0
?adr<-(rules (fact-is be-allowed)(value Students)(compare-value registration-for-Backlog-Subjects))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value Number-of-Students)(compare-value less-than-5-course-on-offer-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value Number-of-Students)(eq ?f1:compare-value less-than-5-course-on-offer-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300662789-0
?adr<-(rules (fact-is be-provided)(value subject-with)(compare-value one-contact-hour-per-week))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-allotted)(value Such-students)(compare-value Tutor-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-allotted)(eq ?f1:value Such-students)(eq ?f1:compare-value Tutor-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300664339-0
?adr<-(rules (fact-is carry)(compare-value assignment-studies))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is assigned)(value guidance-of)(compare-value Tutor))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is assigned)(eq ?f1:value guidance-of)(eq ?f1:compare-value Tutor))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300665880-0
?adr<-(rules (fact-is be-conducted)(compare-value normal-weightages))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is TA)(value T2-End-Semester-Exam)(compare-value component))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is TA)(eq ?f1:value T2-End-Semester-Exam)(eq ?f1:compare-value component))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300667980-0
?adr<-(rules (fact-is notified)(value delete-courses-from-list-of-registered-courses-on-before-date)(compare-value Academic-Calendar))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value Addition-Deletion-Withdrawal-from-Courses-student)(compare-value option-to-add-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value Addition-Deletion-Withdrawal-from-Courses-student)(eq ?f1:compare-value option-to-add-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300672292-0
?adr<-(rules (fact-is be-declared)(compare-value pass))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is obtaining)(value Award-of-Grades-Students)(compare-value grades-to-D))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is obtaining)(eq ?f1:value Award-of-Grades-Students)(eq ?f1:compare-value grades-to-D))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300673852-0
?adr<-(rules (fact-is be-awarded)(compare-value F-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is failing)(value Students)(compare-value subject))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is failing)(eq ?f1:value Students)(eq ?f1:compare-value subject))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300677962-0
?adr<-(rules (fact-is is)(compare-value minimum-passing-grade-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is stands)(value D-Grade-‘D’-grade)(compare-value marginal-performance-ie))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is stands)(eq ?f1:value D-Grade-‘D’-grade)(eq ?f1:compare-value marginal-performance-ie))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300680572-0
?adr<-(rules (fact-is Attendance)(compare-value Rules))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-also-awarded)(value ‘F’-grade)(compare-value case-of-poor-attendance-see))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-also-awarded)(eq ?f1:value ‘F’-grade)(eq ?f1:compare-value case-of-poor-attendance-see))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300682612-0
?adr<-(rules (fact-is take)(compare-value same-course))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have-been-obtained)(value other-courses-in-‘F’-grades)(compare-value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have-been-obtained)(eq ?f1:value other-courses-in-‘F’-grades)(eq ?f1:compare-value student))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300683722-0
?adr<-(rules (fact-is is-awarded-to)(value W-Grade-W-grade)(compare-value student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-allowed-to-withdraw)(value he/she)(compare-value entire-Semester))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-allowed-to-withdraw)(eq ?f1:value he/she)(eq ?f1:compare-value entire-Semester))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300691166-0
?adr<-(rules (fact-is have-to-register)(value Students-desirous-of-improvement-of-Grades-in-subject)(compare-value time-of-registration-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-allowed-only)(value Grade-improvement)(compare-value Theory-subjects-in-subjects-like-Minor-Projects-Major-Projects-Projects-Seminars-Laboratory-Courses-Term-Paper-Colloquium))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-allowed-only)(eq ?f1:value Grade-improvement)(eq ?f1:compare-value Theory-subjects-in-subjects-like-Minor-Projects-Major-Projects-Projects-Seminars-Laboratory-Courses-Term-Paper-Colloquium))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300695829-0
?adr<-(rules (fact-is undertaking)(compare-value subject-for-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-paid)(value Additional-fee)(compare-value student-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-paid)(eq ?f1:value Additional-fee)(eq ?f1:compare-value student-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300701409-0
?adr<-(rules (fact-is obtained)(value grade)(compare-value improvement))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is taken)(value final-result-of-subject)(compare-value improvement-of-grade))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is taken)(eq ?f1:value final-result-of-subject)(eq ?f1:compare-value improvement-of-grade))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300702969-0
?adr<-(rules (fact-is be)(compare-value eligible-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is having-undertaken)(value Student)(compare-value improvement-of-grades-option))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is having-undertaken)(eq ?f1:value Student)(eq ?f1:compare-value improvement-of-grades-option))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300704539-0
?adr<-(rules (fact-is be-re-sorted)(compare-value such-cases:))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is Following)(compare-value documentation))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is Following)(eq ?f1:compare-value documentation)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300709269-0
?adr<-(rules (fact-is be-declared-promoted-to)(compare-value next-class))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value Students-Admitted-in-After-Academic-Year-2011-student)(compare-value CGPA-of-at-least-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value Students-Admitted-in-After-Academic-Year-2011-student)(eq ?f1:compare-value CGPA-of-at-least-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300718989-0
?adr<-(rules (fact-is have)(compare-value 28-hours-of-practical-work))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value 3-1-course)(compare-value 42-hours-of-theory-14-tutorials-while-0-0-2-practical-lab-course))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value 3-1-course)(eq ?f1:compare-value 42-hours-of-theory-14-tutorials-while-0-0-2-practical-lab-course))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300720549-0
?adr<-(rules (fact-is are-expected-to-be)(value undergraduate-students)(compare-value present-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is Attendance)(compare-value Rules))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is Attendance)(eq ?f1:compare-value Rules)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300722119-0
?adr<-(rules (fact-is taken-together)(value course-during-semester-in-lectures-tutorials)(compare-value practical-courses))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have)(value student)(compare-value minimum-attendance-of-80%-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have)(eq ?f1:value student)(eq ?f1:compare-value minimum-attendance-of-80%-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300723619-0
?adr<-(rules (fact-is be-debarred-appearing)(value course-irrespective-of-performance-in-tests)(compare-value supplementary-exam))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-awarded)(value student-with-less-than-80%-attendance-in-course)(compare-value ‘F’-grade-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-awarded)(eq ?f1:value student-with-less-than-80%-attendance-in-course)(eq ?f1:compare-value ‘F’-grade-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300725179-0
?adr<-(rules (fact-is take)(compare-value account))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is awarding)(value Course-Coordinator-while)(compare-value grades))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is awarding)(eq ?f1:value Course-Coordinator-while)(eq ?f1:compare-value grades))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300726879-0
?adr<-(rules (fact-is is)(value number-of-days)(compare-value medical-other-leave-for-reason))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is meet)(value student)(compare-value above-attendance-requirement-irrespective-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is meet)(eq ?f1:value student)(eq ?f1:compare-value above-attendance-requirement-irrespective-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300728599-0
?adr<-(rules (fact-is be-taken-scheduled)(value particular-course-roll-call)(compare-value lecture-tutorial-practical-class))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is maintain)(value order-to)(compare-value attendance-record-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is maintain)(eq ?f1:value order-to)(eq ?f1:compare-value attendance-record-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300730159-0
?adr<-(rules (fact-is scheduled)(value purpose-of-attendance)(compare-value class))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is taking)(value Teacher-device-other-method-of)(compare-value attendance-For))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is taking)(eq ?f1:value Teacher-device-other-method-of)(eq ?f1:compare-value attendance-For))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300731679-0
?adr<-(rules (fact-is supported)(value continuous-illness-of-two-weeks-more)(compare-value proper-medical-certificate))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-given-following)(value relaxation-of-to-5%)(compare-value special-grounds:))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-given-following)(eq ?f1:value relaxation-of-to-5%)(eq ?f1:compare-value special-grounds:))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300735351-0
?adr<-(rules (fact-is has-submitted)(value basis-of-medical-advice-after-due-approval-of-Dean-Vice-Chancellor)(compare-value authentic-medical-record))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is has-been)(value Semester-Withdrawal-in-Medical-Cases-student)(compare-value absent-from-classes-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is has-been)(eq ?f1:value Semester-Withdrawal-in-Medical-Cases-student)(eq ?f1:compare-value absent-from-classes-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300737921-0
?adr<-(rules (fact-is be-taken)(compare-value minimum-30-days-before))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is take)(value decision-to)(compare-value semester-withdrawal))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is take)(eq ?f1:value decision-to)(eq ?f1:compare-value semester-withdrawal))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300738981-0
?adr<-(rules (fact-is /-continue-to-be-registered-be-evaluated)(value he)(compare-value performance))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is does-not-apply)(value student)(compare-value same))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is does-not-apply)(eq ?f1:value student)(eq ?f1:compare-value same))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300740601-0
?adr<-(rules (fact-is inform)(value Semester-student)(compare-value Dean-Academic))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is regarding)(value Information)(compare-value absence-during))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is regarding)(eq ?f1:value Information)(eq ?f1:compare-value absence-during))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300748603-0
?adr<-(rules (fact-is be-given-to)(value fresh-answer-book)(compare-value student-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is completing)(compare-value above-formalities))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is completing)(eq ?f1:compare-value above-formalities)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300749603-0
?adr<-(rules (fact-is be-recorded-prescribed)(value same)(compare-value form))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is does-not-hand)(value student)(compare-value relevant-material-/-to-form))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is does-not-hand)(eq ?f1:value student)(eq ?f1:compare-value relevant-material-/-to-form))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300757035-0
?adr<-(rules (fact-is nominated)(value 2--Two-professors)(compare-value VC-Members-Head-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be:)(value Composition-of-committee)(compare-value Dean-AandR-Chairman))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be:)(eq ?f1:value Composition-of-committee)(eq ?f1:compare-value Dean-AandR-Chairman))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300759085-0
?adr<-(rules (fact-is laying-clearly)(compare-value nature-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is submit)(value It)(compare-value recommendations-after))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is submit)(eq ?f1:value It)(eq ?f1:compare-value recommendations-after))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300760595-0
?adr<-(rules (fact-is be-taken)(compare-value different-categories-of-offences))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-established-following)(value Categories-of-Offences-Punishments-For-student-guilt)(compare-value actions))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-established-following)(eq ?f1:value Categories-of-Offences-Punishments-For-student-guilt)(eq ?f1:compare-value actions))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300762335-0
?adr<-(rules (fact-is going-to)(value Examination-hall-before-submission-of-answer-sheet-eg-while)(compare-value wash-room))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-found-to-be-talking-to)(value student)(compare-value person-outside))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-found-to-be-talking-to)(eq ?f1:value student)(eq ?f1:compare-value person-outside))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300765807-0
?adr<-(rules (fact-is take)(value invigilator-in-charge-of-room-hall)(compare-value possession-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is BE)(value ACTION-TO))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is BE)(eq ?f1:value ACTION-TO)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300767427-0
?adr<-(rules (fact-is is-being-cancelled-provide)(compare-value student-with))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-informed)(value student)(compare-value first-answer-sheet))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-informed)(eq ?f1:value student)(eq ?f1:compare-value first-answer-sheet))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300771207-0
?adr<-(rules (fact-is arise)(value Dean-as)(compare-value evaluation-exercise))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is report)(value Examiners)(compare-value such-cases-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is report)(eq ?f1:value Examiners)(eq ?f1:compare-value such-cases-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300773767-0
?adr<-(rules (fact-is be-cancelled-awarded)(value Examination-of-concerned-paper-to)(compare-value zero-marks))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is BE)(value ACTION-TO))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is BE)(eq ?f1:value ACTION-TO)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300779057-0
?adr<-(rules (fact-is be-awarded-fail)(compare-value grade-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is BE)(value ACTION-TO)(compare-value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is BE)(eq ?f1:value ACTION-TO)(eq ?f1:compare-value student))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300781657-0
?adr<-(rules (fact-is being)(value books-while)(compare-value out-side))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-consulting)(compare-value notes))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-consulting)(eq ?f1:compare-value notes)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300785967-0
?adr<-(rules (fact-is connected)(value examiner-anybody)(compare-value Institute-Examination-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is communicating-attempting-to-communicate-directly)(compare-value someone))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is communicating-attempting-to-communicate-directly)(eq ?f1:compare-value someone)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300787547-0
?adr<-(rules (fact-is destroying)(compare-value note))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(compare-value guilty-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:compare-value guilty-of)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300789107-0
?adr<-(rules (fact-is be-cancelled)(value Examinations-of-registered-courses-for-semester-to)(compare-value student-to-from-in-supplementary-Examinations-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is BE)(value ACTION-TO))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is BE)(eq ?f1:value ACTION-TO)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300791737-0
?adr<-(rules (fact-is be-cancelled)(value Examination-to)(compare-value semester-student-to-from-for-Institute-Examination-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is BE)(value ACTION-TO))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is BE)(eq ?f1:value ACTION-TO)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300798237-0
?adr<-(rules (fact-is be-cancelled-to-be-further)(value Examinations-of-semester-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is BE)(value ACTION-TO))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is BE)(eq ?f1:value ACTION-TO)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300799777-0
?adr<-(rules (fact-is found-committing-abetting)(value Examination)(compare-value committal-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-not)(value CATEGORY-OF-OFFENCE-person)(compare-value candidate-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-not)(eq ?f1:value CATEGORY-OF-OFFENCE-person)(eq ?f1:compare-value candidate-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300800797-0
?adr<-(rules (fact-is BE)(value ACTION-TO)(compare-value TAKEN:-To-with-Vice-Chancellor-in-appropriate-manner-expulsion-from-Institute))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is)(value he/she)(compare-value student-of-Institute))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is)(eq ?f1:value he/she)(eq ?f1:compare-value student-of-Institute))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300803997-0
?adr<-(rules (fact-is awarded-so-far)(value severe-punishment)(compare-value UFM-cases-against))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is BE)(value ACTION-TO)(compare-value TAKEN:-One-step-higher-punishment-than))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is BE)(eq ?f1:value ACTION-TO)(eq ?f1:compare-value TAKEN:-One-step-higher-punishment-than))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300807708-0
?adr<-(rules (fact-is have-been-detected)(value Examination)(compare-value Examination-declaration-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be:-have-occurred)(value offences)(compare-value Examination))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be:-have-occurred)(eq ?f1:value offences)(eq ?f1:compare-value Examination))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300809238-0
?adr<-(rules (fact-is Standing)(value departmentinstitute)(compare-value Committee-as))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have-been-found-to-be)(value penalty-in-such-cases-of-unfair-means-plagiarism)(compare-value true-by-appropriate-committees-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have-been-found-to-be)(eq ?f1:value penalty-in-such-cases-of-unfair-means-plagiarism)(eq ?f1:compare-value true-by-appropriate-committees-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300810788-0
?adr<-(rules (fact-is considering)(value Vice--Chancellor-after)(compare-value full-facts-report-on-matter-same-penalty))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value imposition-of-such-penalty)(compare-value discretion-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value imposition-of-such-penalty)(eq ?f1:compare-value discretion-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300813368-0
?adr<-(rules (fact-is be)(value Examination-student-STATEMENT-OF-STUDENT:-Signature-of-Student-Date-Time-______________________-STATEMENT-OF-INVIGILATOR:-Record-circumstances-of-offences-in-brief-statement)(compare-value definite-unambiguous))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-signed)(value Attach:-All-materials)(compare-value Invigilator-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-signed)(eq ?f1:value Attach:-All-materials)(eq ?f1:compare-value Invigilator-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300819678-0
?adr<-(rules (fact-is be-reflected)(value academic-year)(compare-value proficiency-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-evaluated)(value Adherence-to-discipline-norms)(compare-value end-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-evaluated)(eq ?f1:value Adherence-to-discipline-norms)(eq ?f1:compare-value end-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300820888-0
?adr<-(rules (fact-is be)(value PROCEDURE-FOR-PROCESSING-CASES-OF-INDISCIPLINE-student)(compare-value guilty-of-misconduct-breach-of-discipline))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is violates)(value he)(compare-value provisions-of-standing-orders-by-Institute))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is violates)(eq ?f1:value he)(eq ?f1:compare-value provisions-of-standing-orders-by-Institute))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-gen-1494300822418-0
?adr<-(rules (fact-is considering)(compare-value case))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is received-observed-be-referred-to)(value case-of-indiscipline)(compare-value Dean-Students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is received-observed-be-referred-to)(eq ?f1:value case-of-indiscipline)(eq ?f1:compare-value Dean-Students))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300825578-0
?adr<-(rules (fact-is suspend)(value Vice-Chancellor)(compare-value student-for-act-of-indiscipline-detrimental-to-healthy-atmosphere-/-law-order-in-campus))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is exists)(value his-judgment-prima-facie-case-of-breach-of-discipline)(compare-value student-institute-inquiry-by-Proctorial-Board))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is exists)(eq ?f1:value his-judgment-prima-facie-case-of-breach-of-discipline)(eq ?f1:compare-value student-institute-inquiry-by-Proctorial-Board))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300827118-0
?adr<-(rules (fact-is containing)(compare-value substance-of-charge-imputation))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is issue)(value PROCEDURE-FOR-ENQUIRY-Proctorial-Board-on-receipt-of-case)(compare-value notice))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is issue)(eq ?f1:value PROCEDURE-FOR-ENQUIRY-Proctorial-Board-on-receipt-of-case)(eq ?f1:compare-value notice))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300828718-0
?adr<-(rules (fact-is appear)(value student)(compare-value committee-in-person-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is specify)(value notice)(compare-value date-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is specify)(eq ?f1:value notice)(eq ?f1:compare-value date-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300830298-0
?adr<-(rules (fact-is submit)(value incident)(compare-value report))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is examining-charged)(value committee)(compare-value student-such-other-persons-testimony-bearing-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is examining-charged)(eq ?f1:value committee)(eq ?f1:compare-value student-such-other-persons-testimony-bearing-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300832860-0
?adr<-(rules (fact-is decide)(value enquiry-committee)(compare-value quantum-of-punishment-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is consider)(value DSWVice-Chancellor)(compare-value report-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is consider)(eq ?f1:value DSWVice-Chancellor)(eq ?f1:compare-value report-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300835142-0
?adr<-(rules (fact-is proposes-to-take)(value charges-proposed-penalty-clauses-under-Institute)(compare-value action))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is inform)(value case-of-proposed-punishment-of-rustication-expulsion-Registrar)(compare-value student-in-writing-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is inform)(eq ?f1:value case-of-proposed-punishment-of-rustication-expulsion-Registrar)(eq ?f1:compare-value student-in-writing-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300836782-0
?adr<-(rules (fact-is Cause”-why-proposed)(value “Show)(compare-value penalty))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-given)(value student)(compare-value 5-days-notice-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-given)(eq ?f1:value student)(eq ?f1:compare-value 5-days-notice-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300840038-0
?adr<-(rules (fact-is be-presumed)(compare-value student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-received)(value Case-reply)(compare-value stipulated-time))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-received)(eq ?f1:value Case-reply)(eq ?f1:compare-value stipulated-time))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300844718-0
?adr<-(rules (fact-is suspended)(compare-value fine-operative))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-found)(value concerned-student)(compare-value guilty-of-act-of-indiscipline-during-remaining-period-of-study-in-Institute))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-found)(eq ?f1:value concerned-student)(eq ?f1:compare-value guilty-of-act-of-indiscipline-during-remaining-period-of-study-in-Institute))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300849950-0
?adr<-(rules (fact-is forfeit)(compare-value amount))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-expelled)(value student)(compare-value hostel-on-disciplinary-ground))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-expelled)(eq ?f1:value student)(eq ?f1:compare-value hostel-on-disciplinary-ground))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300853270-0
?adr<-(rules (fact-is be-required-to-apply)(compare-value afresh-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is expelled)(value Student)(compare-value complete-semester))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is expelled)(eq ?f1:value Student)(eq ?f1:compare-value complete-semester))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300855854-0
?adr<-(rules (fact-is awarded)(value DISCIPLINARY-GROUP-OF-MARKS-disciplinary-grade)(compare-value end-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is AWARDING)(value PROCEDURE-FOR)(compare-value GRADES-FOR))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is AWARDING)(eq ?f1:value PROCEDURE-FOR)(eq ?f1:compare-value GRADES-FOR))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300857525-0
?adr<-(rules (fact-is get)(value student)(compare-value A+-grade))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-recorded)(value act-of-indiscipline))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-recorded)(eq ?f1:value act-of-indiscipline)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300859172-0
?adr<-(rules (fact-is awarded-are-given)(compare-value table))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-deducted)(value guideline-maximum-marks-to)(compare-value offences-punishment))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-deducted)(eq ?f1:value guideline-maximum-marks-to)(eq ?f1:compare-value offences-punishment))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300860838-0
?adr<-(rules (fact-is be-dealt)(value complete-as-case)(compare-value own-merit-by-Competent-Authority))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-neither)(value list)(compare-value comprehensive))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-neither)(eq ?f1:value list)(eq ?f1:compare-value comprehensive))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300864406-0
?adr<-(rules (fact-is based)(compare-value overall-adherence-to-discipline-conduct-by-students-during-entire-programme))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is make)(value committee)(compare-value suitable-recommendation))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is make)(eq ?f1:value committee)(eq ?f1:compare-value suitable-recommendation))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300867312-0
?adr<-(rules (fact-is displayed)(compare-value notice-boards-in-usual-manner))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-notified)(value amendments-additions-to-Standing-Orders)(compare-value notices))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-notified)(eq ?f1:value amendments-additions-to-Standing-Orders)(eq ?f1:compare-value notices))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300883632-0
?adr<-(rules (fact-is decided)(value monetary-fine-as)(compare-value time-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is invite)(value Loss-of-I-card)(compare-value fine-in-disciplinary-grade))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is invite)(eq ?f1:value Loss-of-I-card)(eq ?f1:compare-value fine-in-disciplinary-grade))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300888723-0
?adr<-(rules (fact-is are)(value classes)(compare-value liable-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fail-to-make)(value Students)(compare-value sufficient-progress-in-studies-attendance-in))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fail-to-make)(eq ?f1:value Students)(eq ?f1:compare-value sufficient-progress-in-studies-attendance-in))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300889915-0
?adr<-(rules (fact-is be-regarded)(value it)(compare-value mass-absenteeism-act-of-indiscipline))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are)(value particular-class/period-than-50%-students)(compare-value absent))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are)(eq ?f1:value particular-class/period-than-50%-students)(eq ?f1:compare-value absent))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300891564-0
?adr<-(rules (fact-is indulging)(compare-value mass))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-taken)(value Disciplinary-action)(compare-value students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-taken)(eq ?f1:value Disciplinary-action)(eq ?f1:compare-value students))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300893249-0
?adr<-(rules (fact-is issued)(compare-value University))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is disobey)(value student)(compare-value order))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is disobey)(eq ?f1:value student)(eq ?f1:compare-value order))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300899775-0
?adr<-(rules (fact-is threaten)(value Examinations-tests-attempt)(compare-value staff-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is use)(value students)(compare-value unfair-means-at))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is use)(eq ?f1:value students)(eq ?f1:compare-value unfair-means-at))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300903272-0
?adr<-(rules (fact-is render)(value they)(compare-value liable-to-penalties-as-in-force-from-time-to-time))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is do-not-do-so)(value they))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is do-not-do-so)(eq ?f1:value they)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300907317-0
?adr<-(rules (fact-is have-to-replace)(compare-value damaged-property-good))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is facing)(value Such-student-in-addition-to)(compare-value disciplinary-action))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is facing)(eq ?f1:value Such-student-in-addition-to)(eq ?f1:compare-value disciplinary-action))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300910016-0
?adr<-(rules (fact-is concerned)(value students))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is have-to-be-made)(value damage-breakage-of-such-equipment-etc-due-to-improper-use-of-negligent-handling)(compare-value good-by))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is have-to-be-made)(eq ?f1:value damage-breakage-of-such-equipment-etc-due-to-improper-use-of-negligent-handling)(eq ?f1:compare-value good-by))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300918420-0
?adr<-(rules (fact-is be-denied)(compare-value entry-to))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is wearing)(value Students)(compare-value prescribed-dress-code))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is wearing)(eq ?f1:value Students)(eq ?f1:compare-value prescribed-dress-code))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300927485-0
?adr<-(rules (fact-is is-not-permitted-lead-to)(compare-value disciplinary-action))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is making)(value Tearing-folding-cutting-of-library-books)(compare-value mark-on))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is making)(eq ?f1:value Tearing-folding-cutting-of-library-books)(eq ?f1:compare-value mark-on))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300929404-0
?adr<-(rules (fact-is be-brought-to)(compare-value notice-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is noticed)(value defect)(compare-value time-of-borrowing-books))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is noticed)(eq ?f1:value defect)(eq ?f1:compare-value time-of-borrowing-books))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300935402-0
?adr<-(rules (fact-is be-deposited)(compare-value entrance-gate))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is belonging-to)(value Personal-property-books-other-than)(compare-value LRC))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is belonging-to)(eq ?f1:value Personal-property-books-other-than)(eq ?f1:compare-value LRC))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300938408-0
?adr<-(rules (fact-is report-to)(value new-student-on-arrival)(compare-value Hostel-Warden-Administrator))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is STANDING)(compare-value ORDERS-FOR-HOSTEL-STUDENTS))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is STANDING)(eq ?f1:compare-value ORDERS-FOR-HOSTEL-STUDENTS)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300940647-0
?adr<-(rules (fact-is occupying)(value Hostel-inmates:-At-time-of)(compare-value room-student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is following-are-Standing)(compare-value Orders-for-compliance-by))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is following-are-Standing)(eq ?f1:compare-value Orders-for-compliance-by)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300945735-0
?adr<-(rules (fact-is including)(compare-value laptops))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is ensure)(value They)(compare-value valuables))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is ensure)(eq ?f1:value They)(eq ?f1:compare-value valuables))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300948158-0
?adr<-(rules (fact-is enter-leave)(value security-staff-time)(compare-value Hostel-gate))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is show)(value Students)(compare-value ID-card-to))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is show)(eq ?f1:value Students)(eq ?f1:compare-value ID-card-to))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300951303-0
?adr<-(rules (fact-is including)(compare-value rustication-from))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is invoke)(value violation)(compare-value severe-penalty))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is invoke)(eq ?f1:value violation)(eq ?f1:compare-value severe-penalty))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300953979-0
?adr<-(rules (fact-is possessing)(value lethal-weapon-with-in-Hostel-premises-though)(compare-value license-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-not-permitted-to-keep)(value Students)(compare-value fire-arms))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-not-permitted-to-keep)(eq ?f1:value Students)(eq ?f1:compare-value fire-arms))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300957662-0
?adr<-(rules (fact-is cabling)(compare-value outlets-fittings-additional-electrical-appliances))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fiddling)(value Hostel-inmates)(compare-value electric-connections-computer))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fiddling)(eq ?f1:value Hostel-inmates)(eq ?f1:compare-value electric-connections-computer))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300963274-0
?adr<-(rules (fact-is allotted-to)(compare-value hostel))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is permitted-be-allowed-to-occupy)(value Students-unless)(compare-value rooms))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is permitted-be-allowed-to-occupy)(eq ?f1:value Students-unless)(eq ?f1:compare-value rooms))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300967788-0
?adr<-(rules (fact-is hand)(compare-value charge-of-rooms))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is proceeding)(compare-value summer-vacation-students))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is proceeding)(eq ?f1:compare-value summer-vacation-students)(eq ?f1:value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300968962-0
?adr<-(rules (fact-is is-authorized-to-break)(value Warden-/-Administrator)(compare-value open-locked-room-inventory-of-articles))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is fails-to-do-so)(value student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is fails-to-do-so)(eq ?f1:value student)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300972114-0
?adr<-(rules (fact-is take)(value nature-to-Warden-Administrator)(compare-value necessary-action))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is refer)(value Hostel-inmates)(compare-value difficulties-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is refer)(eq ?f1:value Hostel-inmates)(eq ?f1:compare-value difficulties-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300975724-0
?adr<-(rules (fact-is keep)(compare-value pets))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is is-allowed-to-engage)(value student)(compare-value private-servant))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is is-allowed-to-engage)(eq ?f1:value student)(eq ?f1:compare-value private-servant))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300981758-0
?adr<-(rules (fact-is specified)(compare-value times-unless))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be)(value students)(compare-value present-in-respective-hostels-as-per))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be)(eq ?f1:value students)(eq ?f1:compare-value present-in-respective-hostels-as-per))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300983429-0
?adr<-(rules (fact-is allotted-to)(compare-value seven-days-of-registration))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is does-not-occupy)(value student)(compare-value Hostel-room))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is does-not-occupy)(eq ?f1:value student)(eq ?f1:compare-value Hostel-room))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300986139-0
?adr<-(rules (fact-is have-to-abide)(compare-value Hostel-Rules-in-vogue))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is staying)(value students)(compare-value hostels-during-summer-vacations))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is staying)(eq ?f1:value students)(eq ?f1:compare-value hostels-during-summer-vacations))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300988692-0
?adr<-(rules (fact-is prescribed)(value food-beyond)(compare-value timings-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is get)(value They)(compare-value entry))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is get)(eq ?f1:value They)(eq ?f1:compare-value entry))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300990798-0
?adr<-(rules (fact-is be-expelled)(compare-value Hostel))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is found-indulged-ragging)(value Student))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is found-indulged-ragging)(eq ?f1:value Student)(eq ?f1:compare-value none))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300996148-0
?adr<-(rules (fact-is repeated)(compare-value offences))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-expelled)(value student)(compare-value Hostel-in-case-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-expelled)(eq ?f1:value student)(eq ?f1:compare-value Hostel-in-case-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300997705-0
?adr<-(rules (fact-is vacate)(value semester-as-such)(compare-value rooms-within-three-days-of-conclusion-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is are-charged)(value students)(compare-value Hostel-fee-for))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is are-charged)(eq ?f1:value students)(eq ?f1:compare-value Hostel-fee-for))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494300999250-0
?adr<-(rules (fact-is attract)(value competent-authority)(compare-value disciplinary-action-payment-at-enhanced-rates-on-rates-as-by-authority-for))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is written)(value stay-beyond-without)(compare-value permission-of))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is written)(eq ?f1:value stay-beyond-without)(eq ?f1:compare-value permission-of))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494301000804-0
?adr<-(rules (fact-is face)(compare-value disciplinary-action-in))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is violating)(value Students)(compare-value above-guidelines))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is violating)(eq ?f1:value Students)(eq ?f1:compare-value above-guidelines))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494301009869-0
?adr<-(rules (fact-is be-de-registered)(value Conditions-for-Progression-Termination-of-Registration-student))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is /-fails-to-meet-following)(value he)(compare-value criteria-for-continuation-of-Program:-to-requirements-for-progression-as-in-Academic-System-for-respective-phase’s))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is /-fails-to-meet-following)(eq ?f1:value he)(eq ?f1:compare-value criteria-for-continuation-of-Program:-to-requirements-for-progression-as-in-Academic-System-for-respective-phase’s))
(bind ?f ?f1))
)(join-ands ?f)
)

(defrule gen-1494301012527-0
?adr<-(rules (fact-is fails-to-complete)(value student)(compare-value requirements-of))
=>
(join-ands-start ?adr)
(bind ?f (assert(rules (fact-is be-awarded)(value Degree)(compare-value case))))
(if (eq ?f FALSE) then 
(do-for-fact ((?f1 rules))(and (eq ?f1:fact-is be-awarded)(eq ?f1:value Degree)(eq ?f1:compare-value case))
(bind ?f ?f1))
)(join-ands ?f)
)


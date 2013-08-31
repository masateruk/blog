((:version . 0) (:type . :syncstitch-model)
 (:definitions (:type . :text)
   (:text "(define-channel sch (x) '((0) (1) (e)))"
	 "(define-channel rch (x) '((0) (1) (e)))" ""
	 "(define-event send.0)" "(define-event send.1)"
	 "(define-event recv.0)" "(define-event recv.1)" ""
	 "(define-event send_to_s.0)" "(define-event send_to_s.1)"
	 "(define-event send_to_r.0)" "(define-event send_to_r.1)" "")
   (:bound 494 8 512 342))
 (:assertions
   (:assertion-list
	 ((:id . 0) (:expr-string . "(deadlock SYS)")
	  (:pe-props ()
		((:compoprops (:graph (:show . #t) (:bound 384 184 512 342))
		   (:trans (:show . #t) (:bound 184 184 200 150))
		   (:proctree (:show . #t) (:bound 15 337 368 154))
		   (:procexpr (:show . #f) (:bound 228 378 200 150))
		   (:procprop (:show . #f) (:bound 250 400 200 150))
		   (:trace (:show . #t) (:bound 71 339 548 182))))))
	 ((:id . 2) (:expr-string . "(trace SPEC SYS)") (:pe-props () ()))
	 ((:id . 3) (:expr-string . "(failure SPEC SYS)") (:pe-props () ()))
	 ((:id . 1) (:expr-string . "(divergence SYS)") (:pe-props () ())))
   (:bound 12 447 378 181) (:show . #t))
 (:status-window (:bound 20 184 378 181) (:show . #t))
 (:processes (:bound 1 1 378 181)
   (:process-list
	 ((:id . 0) (:name . "Sender") (:type . :diagram)
	  (:init-pexpr . "S0")
	  (:pe-prop
		(:compoprops (:graph (:show . #t) (:bound 522 138 512 342))
		  (:trans (:show . #t) (:bound 322 138 200 150))
		  (:proctree (:show . #f) (:bound 344 310 200 150))
		  (:procexpr (:show . #f) (:bound 366 332 200 150))
		  (:procprop (:show . #f) (:bound 388 354 200 150))
		  (:trace (:show . #f) (:bound 322 288 200 150))))
	  (:csp-trans-error-info)
	  (:model (:type . :diagram) (:diagram (:bound 661 70 477 322))
		(:pdprop (:bound 450 44 220 251))
		(:pderror (:bound 510 321 220 251))
		(:ssws (:ch-args (:bound 268 29 256 192))
		  (:guard (:bound 435 -92 256 192))
		  (:transform (:bound 12 -46 512 342))
		  (:recv-guard (:bound 532 92 256 192)))
		(:model
		  (:fig-pd-trans 21 (10 . :center) (16 . :center)
			#((188.3194443045951 . 190.0186254833306)
			  (229.1820202542879 . 206.3799517501805)
			  (263.520767495388 . 187.2899240370161))
			(-18 24 141 22)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x")
			 (:recv-guard (:text "(not (equal? x 1))"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "[(not (equal? x 1))] sch?(x)")))
		  (:fig-pd-trans 20 (4 . :center) (3 . :center)
			#((257.4548252923688 . 71.79973264251478)
			  (215.4924234820938 . 51.64704647461802)
			  (180.8327999779683 . 72.89941512869524))
			(-102 -44 145 26)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x")
			 (:recv-guard (:text "(not (equal? x 0))"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "[(not (equal? x 0))] sch?(x)")))
		  (:fig-pd-trans 19 (8 . :center) (16 . :center)
			#((356.6542622429257 . 134.4671297822744)
			  (331.6075818570811 . 153.1442303087038)
			  (306.5609014712363 . 171.8213308351331))
			(-18 23 64 21)
			((:type . :event) (:event . "send.1") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send.1")))
		  (:fig-pd-state 16 (21 19 11) (261 164 48 31) (20 . 15)
			((:name . "S4") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "S4") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 15 (14 . :center) (3 . :center)
			#((102.9357944314507 . 117.3631450265644)
			  (124.0035850699514 . 103.5054442182576)
			  (145.0713757084521 . 89.64774340995071))
			(-28 -36 64 21)
			((:type . :event) (:event . "send.0") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send.0")))
		  (:fig-pd-state 14 (12 15) (65 109 40 33) (20 . 15)
			((:name . "S0") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "S0") (:abstract . :no) (:scope . :global)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 12 (10 . :center) (14 . :center)
			#((146.3046248015029 . 169.7409896823504)
			  (124.3873377902431 . 152.0216417757393)
			  (102.4700507789833 . 134.3022938691282))
			(-131 -11 123 23)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(equal? x 1)"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "[(equal? x 1)] sch?(x)")))
		  (:fig-pd-trans 11 (16 . :center) (10 . :center)
			#((261.000485084472 . 180.1044713753063)
			  (225.500242542236 . 180.2692661548098)
			  (190 . 180.4340609343132))
			(-67 -28 64 21)
			((:type . :event) (:event . "send_to_r.1")
			 (:channel . "rch") (:guard (:text ""))
			 (:ch-args (:text "1")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send_to_r.1")))
		  (:fig-pd-state 10 (21 12 11) (143 163 47 36) (20 . 15)
			((:name . "S5") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "S5") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 9 (4 . :center) (8 . :center)
			#((299.9073436686886 . 87.8901124638582)
			  (327.7330821205824 . 102.0421855840379)
			  (355.5588205724762 . 116.1942587042176))
			(21 -6 117 21)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(equal? x 0)"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "[(equal? x 0)] sch?(x)")))
		  (:fig-pd-state 8 (19 9) (354 107 41 35) (20 . 15)
			((:name . "S3") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "S3") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 6 (3 . :center) (4 . :center)
			#((184 . 81.2089903603457) (219.5 . 81.2089906359996)
			  (255 . 81.2089909116536))
			(1 2 64 21)
			((:type . :event) (:event . "send_to_r.0")
			 (:channel . "rch") (:guard (:text ""))
			 (:ch-args (:text "0")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send_to_r.0")))
		  (:fig-pd-state 4 (20 9 6) (255 64 46 34) (20 . 15)
			((:name . "S2") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "S2") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 3 (20 15 6) (143 66 41 32) (20 . 15)
			((:name . "S1") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "S1") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0))))))
	 ((:id . 1) (:name . "Receiver") (:type . :diagram)
	  (:init-pexpr . "") (:csp-trans-error-info)
	  (:model (:type . :diagram) (:diagram (:bound 555 125 482 298))
		(:pdprop (:bound 335 125 220 251))
		(:pderror (:bound 335 376 220 251))
		(:ssws (:ch-args (:bound 427 217 256 192))
		  (:guard (:bound 404 194 256 192))
		  (:transform (:bound 381 171 512 342))
		  (:recv-guard (:bound 358 148 256 192)))
		(:model
		  (:fig-pd-trans 14 (3 . :center) (8 . :center)
			#((367.5395563849023 . 92.40821009643651)
			  (354.2062947418205 . 66.11032209785341)
			  (304.9075897816427 . 63.52238686701116))
			(-61 -57 133 23)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x")
			 (:recv-guard (:text "(not (equal? x 1))"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "[(not (equal? x 1))] rch?(x)")))
		  (:fig-pd-trans 13 (0 . :center) (5 . :center)
			#((93.8152132638667 . 121.9993597462511)
			  (102.9730438844849 . 166.0436040486397)
			  (150.0561034780803 . 170.1227456219748))
			(-67 55 141 20)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x")
			 (:recv-guard (:text "(not (equal? x 0))"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "[(not (equal? x 0))] rch?(x)")))
		  (:fig-pd-trans 11 (9 . :center) (5 . :center)
			#((276.0124557725652 . 164.4706913821417)
			  (235.5040407422012 . 164.0784932759127)
			  (194.9956257118373 . 163.6862951696836))
			(-56 -23 64 21)
			((:type . :event) (:event . "recv.1") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "recv.1")))
		  (:fig-pd-trans 10 (1 . :center) (8 . :center)
			#((207.9999444493659 . 64.53181837363972)
			  (237.5001740710258 . 64.71701889897437)
			  (267.0004036926857 . 64.90221942430901))
			(-4 -23 64 21)
			((:type . :event) (:event . "recv.0") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "recv.0")))
		  (:fig-pd-state 9 (11 6) (276 150 40 30) (20 . 15)
			((:name . "R4") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "R4") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 8 (14 10 4) (267 50 38 30) (20 . 15)
			((:name . "R2") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "R2") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 7 (5 . :center) (0 . :center)
			#((153.1057882664955 . 155.9716498848936)
			  (132.8264840937424 . 136.2037541236056)
			  (112.5471799209893 . 116.4358583623175))
			(-18 -37 64 21)
			((:type . :event) (:event . "send_to_s.1")
			 (:channel . "sch") (:guard (:text ""))
			 (:ch-args (:text "1")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send_to_s.1")))
		  (:fig-pd-trans 6 (3 . :center) (9 . :center)
			#((360.0833267854866 . 116.0827295733494)
			  (336.6954086972454 . 136.7829223745571)
			  (313.3074906090042 . 157.4831151757648))
			(-22 23 127 27)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(equal? x 1)"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "[(equal? x 1)] rch?(x)")))
		  (:fig-pd-state 5 (13 11 7) (150 149 45 35) (20 . 15)
			((:name . "R5") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "R5") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 4 (8 . :center) (3 . :center)
			#((303.3141081333143 . 71.17717929475501)
			  (330.3453776484644 . 85.854154827508)
			  (357.3766471636144 . 100.5311303602607))
			(-36 18 64 21)
			((:type . :event) (:event . "send_to_s.0")
			 (:channel . "sch") (:guard (:text ""))
			 (:ch-args (:text "0")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send_to_s.0")))
		  (:fig-pd-state 3 (14 6 4) (356 91 47 31) (20 . 15)
			((:name . "R3") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "R3") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 2 (0 . :center) (1 . :center)
			#((115.8919909155206 . 96.07662391473741)
			  (141.6264652905117 . 82.73572061113021)
			  (167.3609396655028 . 69.3948173075231))
			(-75 -45 116 24)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(equal? x 0)"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "[(equal? x 0)] rch?(x)")))
		  (:fig-pd-state 1 (10 2) (166 51 42 27) (20 . 15)
			((:name . "R1") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "R1") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 0 (13 7 2) (74 86 43 36) (20 . 15)
			((:name . "R0") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "R0") (:abstract . :no) (:scope . :global)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0))))))
	 ((:id . 2) (:type . :text) (:name . "SYS") (:init-pexpr . "SYS")
	  (:pe-prop
		(:compoprops (:graph (:show . #t) (:bound 821 23 512 342))
		  (:trans (:show . #t) (:bound 621 23 200 150))
		  (:proctree (:show . #f) (:bound 643 195 200 150))
		  (:procexpr (:show . #f) (:bound 665 217 200 150))
		  (:procprop (:show . #f) (:bound 687 239 200 150))
		  (:trace (:show . #f) (:bound 621 173 200 150))))
	  (:model (:type . :text)
		(:text "(define-process SYS" "  (hpar (list sch rch) "
		  "\x09;(hpar (list send_to_r.0 send_to_r.1) S0 RC0)"
		  "\x09;(hpar (list send_to_s.0 send_to_s.1) R0 SC0)))" "")
		(:bound 117 373 603 338)))
	 ((:id . 3) (:type . :diagram) (:init-pexpr . "") (:name . "SPEC")
	  (:csp-trans-error-info)
	  (:model (:type . :diagram) (:diagram (:bound 640 268 512 342))
		(:pdprop (:bound 402 119 220 251))
		(:pderror (:bound 402 370 220 251))
		(:ssws (:ch-args (:bound 512 360 256 192))
		  (:guard (:bound 489 337 256 192))
		  (:transform (:bound 466 314 512 342))
		  (:recv-guard (:bound 443 291 256 192)))
		(:model
		  (:fig-pd-trans 8 (4 . :center) (1 . :center)
			#((166.7996452943281 . 161.3460378643164)
			  (136.8287483348698 . 137.2086330874031)
			  (106.8578513754115 . 113.0712283104898))
			(-99 -19 64 21)
			((:type . :event) (:event . "recv.1") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "recv.1")))
		  (:fig-pd-trans 7 (3 . :center) (4 . :center)
			#((260.8783042176517 . 115.3464422993722)
			  (230.7280654771365 . 137.9776488067737)
			  (200.5778267366212 . 160.6088553141753))
			(-18 28 64 21)
			((:type . :event) (:event . "send.1") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send.1")))
		  (:fig-pd-trans 6 (2 . :center) (3 . :center)
			#((198.1121618452873 . 67.36173295774755)
			  (229.2217060240902 . 84.99031580011743)
			  (260.3312502028932 . 102.6188986424873))
			(25 -6 64 21)
			((:type . :event) (:event . "recv.0") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "recv.0")))
		  (:fig-pd-trans 5 (1 . :center) (2 . :center)
			#((108.2244903426083 . 94.82134943045001)
			  (133.7779756324713 . 80.60143099352959)
			  (159.3314609223345 . 66.38151255660915))
			(-15 -40 64 21)
			((:type . :event) (:event . "send.0") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send.0")))
		  (:fig-pd-state 4 (8 7) (164 154 40 31) (20 . 15)
			((:name . "SP3") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SP3") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 3 (7 6) (259 93 44 31) (20 . 15)
			((:name . "SP2") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SP2") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 2 (6 5) (158 46 42 30) (20 . 15)
			((:name . "SP1") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SP1") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 1 (8 5) (58 86 52 34) (20 . 15)
			((:name . "SPEC") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SPEC") (:abstract . :no) (:scope . :global)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0))))))
	 ((:id . 4) (:type . :diagram) (:name . "RecvCh")
	  (:init-pexpr . "RC0")
	  (:pe-prop
		(:compoprops (:graph (:show . #t) (:bound 315 115 512 342))
		  (:trans (:show . #t) (:bound 115 115 200 150))
		  (:proctree (:show . #f) (:bound 137 287 200 150))
		  (:procexpr (:show . #f) (:bound 159 309 200 150))
		  (:procprop (:show . #f) (:bound 181 331 200 150))
		  (:trace (:show . #f) (:bound 115 265 200 150))))
	  (:csp-trans-error-info)
	  (:model (:type . :diagram) (:diagram (:bound 856 11 471 390))
		(:pdprop (:bound 636 11 220 251))
		(:pderror (:bound 636 262 220 251))
		(:ssws (:ch-args (:bound 728 103 256 192))
		  (:guard (:bound 705 80 256 192))
		  (:transform (:bound 682 57 512 342))
		  (:recv-guard (:bound 659 34 256 192)))
		(:model
		  (:fig-pd-trans 17 (3 . :center) (10 . :center)
			#((252.671328207147 . 263.4205691632839)
			  (264.6923936264724 . 239.9278740898978)
			  (276.7134590457978 . 216.4351790165118))
			(20 20 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "")))
		  (:fig-pd-trans 16 (3 . :center) (11 . :center)
			#((218.0054675326212 . 278.8815566335836)
			  (192.3841519574014 . 281.7102124905894)
			  (166.7628363821816 . 284.5388683475952))
			(20 20 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "")))
		  (:fig-pd-trans 15 (11 . :center) (0 . :center)
			#((127.6875793378065 . 277.7895209676951)
			  (77.3465927474723 . 208.5900604742706)
			  (100.8079744730398 . 149.2393293783782))
			(-91 -62 64 21)
			((:type . :send) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text "'e"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "rch!'e")))
		  (:fig-pd-trans 14 (1 . :center) (9 . :center)
			#((193.0062757792782 . 35.62425689697673)
			  (162.9270054209814 . 32.79934049644722)
			  (132.8477350626847 . 29.97442409591766))
			(20 20 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "")))
		  (:fig-pd-trans 13 (9 . :center) (0 . :center)
			#((94.70663765274762 . 38.2348700426119)
			  (67.91682195927143 . 82.51982129827297)
			  (97.12916356214605 . 128.5507428765648))
			(-67 33 64 21)
			((:type . :send) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text "'e"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "rch!'e")))
		  (:fig-pd-trans 12 (1 . :center) (8 . :center)
			#((231.3624861914274 . 47.60451118668929)
			  (250.4128601267887 . 66.3233416897061)
			  (269.46323406215 . 85.04217219272292))
			(20 20 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "")))
		  (:fig-pd-state 11 (16 15) (124 272 43 30) (17.5 . 15)
			((:name . "RC6") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "RC6") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 10 (17 6) (269 189 43 30) (17.5 . 15)
			((:name . "RC5") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "RC5") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 9 (14 13) (90 13 43 30) (17.5 . 15)
			((:name . "RC4") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "RC4") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 8 (12 4) (266 79 43 30) (17.5 . 15)
			((:name . "RC3") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "RC3") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 6 (10 . :center) (0 . :center)
			#((271.8813063793369 . 195.7543125857944)
			  (242.6898843042596 . 177.11040317524)
			  (137.7390896872797 . 139.8536309932167))
			(-49 -44 64 21)
			((:type . :send) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text "1"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "rch!1")))
		  (:fig-pd-trans 5 (0 . :center) (3 . :center)
			#((131.6757942715374 . 148.2738715986085)
			  (176.3357891271398 . 205.9391375602958)
			  (224.2645383484148 . 266.4955054090532))
			(-39 29 64 21)
			((:type . :event) (:event . "send_to_r.1") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send_to_r.1")))
		  (:fig-pd-trans 4 (8 . :center) (0 . :center)
			#((266.7027248473715 . 98.20799944733054)
			  (211.7992715895409 . 117.0616094198709)
			  (137.6885124403391 . 134.9297966671966))
			(-46 23 64 21)
			((:type . :send) (:event . "rch") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text "0"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "rch!0")))
		  (:fig-pd-state 3 (17 16 5) (218 261 46 35) (26.5 . 17.5)
			((:name . "RC2") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "RC2") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 2 (0 . :center) (1 . :center)
			#((132.5753089475671 . 127.4063360493584)
			  (162.1837370821381 . 89.82013314848801)
			  (198.0485971505801 . 47.9627430193359))
			(-37 -40 64 21)
			((:type . :event) (:event . "send_to_r.0") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send_to_r.0")))
		  (:fig-pd-state 1 (14 12 2) (193 21 43 32) (20 . 15)
			((:name . "RC1") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "RC1") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 0 (15 13 6 5 4 2) (93 122 45 31) (29.5 . 17)
			((:name . "RC0") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "RC0") (:abstract . :no) (:scope . :global)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0))))))
	 ((:id . 5) (:name . "SendCh") (:type . :diagram) (:init-pexpr . "")
	  (:csp-trans-error-info)
	  (:model (:type . :diagram) (:diagram (:bound 640 59 571 416))
		(:pdprop (:bound 378 48 220 251))
		(:pderror (:bound 378 299 220 251))
		(:ssws (:ch-args (:bound 512 151 256 192))
		  (:guard (:bound 489 128 256 192))
		  (:transform (:bound 466 105 512 342))
		  (:recv-guard (:bound 443 82 256 192)))
		(:model
		  (:fig-pd-trans 26 (4 . :center) (22 . :center)
			#((339.1125712624288 . 298.1522040165117)
			  (355.8424707252681 . 261.9665002953261)
			  (372.5723701881074 . 225.7807965741405))
			(20 20 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "")))
		  (:fig-pd-trans 25 (4 . :center) (23 . :center)
			#((305.1142888744464 . 309.4900423253515)
			  (271.0377158094241 . 308.3044323375273)
			  (236.9611427444017 . 307.118822349703))
			(20 20 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "")))
		  (:fig-pd-trans 24 (23 . :center) (0 . :center)
			#((197.9897806867575 . 297.8093145312085)
			  (163.2574763960835 . 228.5840699152996)
			  (176.8857795094305 . 167.9489029142233))
			(-73 -57 64 21)
			((:type . :send) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text "'e"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "sch!'e")))
		  (:fig-pd-state 23 (25 24) (192 293 45 30) (26 . 17.5)
			((:name . "SC6") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SC6") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 22 (26 6) (364 199 45 30) (26 . 17.5)
			((:name . "SC5") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SC5") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 21 (1 . :center) (17 . :center)
			#((319.6583902100799 . 54.24662034366286)
			  (334.0677994448398 . 75.94519343037068)
			  (348.4772086795995 . 97.64376651707853))
			(20 20 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "")))
		  (:fig-pd-trans 20 (1 . :center) (18 . :center)
			#((280.0082895029461 . 42.90735008956477)
			  (245.9594315384436 . 41.37207911077335)
			  (211.910573573941 . 39.83680813198193))
			(20 20 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "")))
		  (:fig-pd-trans 19 (18 . :center) (0 . :center)
			#((171.1785890017718 . 49.5556430192575)
			  (153.5095711053007 . 98.00612853615098)
			  (171.5900711830043 . 144.6753030729419))
			(-65 31 64 21)
			((:type . :send) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text "'e"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "sch!'e")))
		  (:fig-pd-state 18 (20 19) (164 23 48 31) (29 . 16)
			((:name . "SC4") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SC4") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 17 (21 3) (343 92 48 31) (29 . 16)
			((:name . "SC3") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SC3") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-memo 16 () (328.5 -31 1 1)
			((:label "") (:line-width . 1) (:line-color . 0)
			 (:paint-color . 86) (:label-color . 0)))
		  (:fig-pd-trans 6 (22 . :center) (0 . :center)
			#((364.1684396499995 . 212.1680111191159)
			  (301.7580786707611 . 193.1323719219797)
			  (211.9800435143547 . 159.326408733651))
			(-62 -50 64 21)
			((:type . :send) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text "1"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "sch!1")))
		  (:fig-pd-trans 5 (0 . :center) (4 . :center)
			#((208.6661247113581 . 163.5978635345256)
			  (261.8106475849921 . 229.6076866344433)
			  (311.3863496551447 . 300.5309923517344))
			(2 83 64 21)
			((:type . :event) (:event . "send_to_s.1") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send_to_s.1")))
		  (:fig-pd-state 4 (26 25 5) (305 296 45 30) (26 . 17.5)
			((:name . "SC2") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SC2") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-trans 3 (17 . :center) (0 . :center)
			#((343.3014980058222 . 109.9491481039037)
			  (285.8981259292305 . 126.3866095234479)
			  (212.3347325646424 . 151.4927387745754))
			(-44 26 64 21)
			((:type . :send) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text "0"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args))))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					)))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "sch!0")))
		  (:fig-pd-trans 2 (0 . :center) (1 . :center)
			#((207.7046742535842 . 145.6013805645768)
			  (245.739440267934 . 100.9149044841743)
			  (284.893190000969 . 51.87971059909685))
			(-39 -53 64 21)
			((:type . :event) (:event . "send_to_s.0") (:channel . "")
			 (:guard (:text "")) (:ch-args (:text "")) (:ch-params . "")
			 (:recv-guard (:text "")) (:transform (:text ""))
			 (:line-width . 1) (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\")))"
			   "   ((receive) (list (string-append &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send) (list (string-append user::&channel "!")))
			   ((user::receive)
				(list
				  (string-append user::&channel "?(" user::&ch-params
					")"))))
			 (:label-cache "send_to_s.0")))
		  (:fig-pd-state 1 (21 20 2) (280 27 48 31) (29 . 16)
			((:name . "SC1") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SC1") (:abstract . :no) (:scope . :local)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))
		  (:fig-pd-state 0 (24 19 6 5 3 2) (165 140 48 30) (24 . 17)
			((:name . "SC0") (:base-state . "") (:state-vars . "")
			 (:label ",(if (= 0 (string-length &name))" "     '(\"\")"
			   "     (if (= 0 (string-length &vars))"
			   "         (list &name)"
			   "         (list (string-append \"(\" &name \" \" &vars \")\"))))"
			   )
			 (:label-macro if (= 0 (string-length user::&name))
			   (quote (""))
			   (if (= 0 (string-length user::&vars))
				   (list user::&name)
				   (list
					 (string-append "(" user::&name " " user::&vars ")")
					 )))
			 (:label-cache "SC0") (:abstract . :no) (:scope . :global)
			 (:line-width . 1) (:line-color . 0) (:paint-color . 8)
			 (:label-color . 0)))))))))
((:version . 0) (:type . :syncstitch-model)
 (:definitions (:type . :text)
   (:text "(define N 3)" "(define-channel sch (x) '((0) (1) (e)))"
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
	 ((:id . 4) (:expr-string . "(divergence SYS)") (:pe-props () ()))
	 ((:id . 2) (:expr-string . "(trace SPEC SYS)") (:pe-props () ()))
	 ((:id . 3) (:expr-string . "(failure SPEC SYS)") (:pe-props () ()))
	 )
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
	  (:model (:type . :diagram) (:diagram (:bound 661 70 581 359))
		(:pdprop (:bound 450 44 220 251))
		(:pderror (:bound 510 321 220 251))
		(:ssws (:ch-args (:bound 268 29 256 192))
		  (:guard (:bound 435 -92 256 192))
		  (:transform (:bound 12 -46 512 342))
		  (:recv-guard (:bound 532 92 256 192)))
		(:model
		  (:fig-pd-trans 21 (10 . :center) (16 . :center)
			#((210.9078626018545 . 214.4577586907977)
			  (255.1820202542879 . 258.3799517501805)
			  (296.5764810126005 . 210.7550669493189))
			(76 25 64 21)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x")
			 (:recv-guard (:text "(not (equal? x 1))"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
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
			 (:label-cache "sch?(x)")))
		  (:fig-pd-trans 20 (4 . :center) (3 . :center)
			#((289.2486031222241 . 87.10822628313844)
			  (249.4924234820938 . 48.64704647461804)
			  (205.9476435461501 . 89.24950827989181))
			(-24 -56 84 23)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x")
			 (:recv-guard (:text "(not (equal? x 0))"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
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
			 (:label-cache "sch?(x)")))
		  (:fig-pd-trans 19 (8 . :center) (16 . :center)
			#((384.6542622429257 . 153.4671297822744)
			  (359.6075818570811 . 172.1442303087038)
			  (334.5609014712363 . 190.8213308351331))
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
		  (:fig-pd-state 16 (21 19 11) (289 183 48 31) (20 . 15)
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
			#((130.9357944314507 . 136.3631450265644)
			  (152.0035850699514 . 122.5054442182576)
			  (173.0713757084521 . 108.6477434099507))
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
		  (:fig-pd-state 14 (12 15) (93 128 40 33) (20 . 15)
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
			#((174.3046248015029 . 188.7409896823504)
			  (152.3873377902431 . 171.0216417757393)
			  (130.4700507789833 . 153.3022938691282))
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
			#((289.000485084472 . 199.1044713753063)
			  (253.500242542236 . 199.2692661548098)
			  (218 . 199.4340609343132))
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
		  (:fig-pd-state 10 (21 12 11) (171 182 47 36) (20 . 15)
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
			#((327.9073436686886 . 106.8901124638582)
			  (355.7330821205824 . 121.0421855840379)
			  (383.5588205724762 . 135.1942587042176))
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
		  (:fig-pd-state 8 (19 9) (382 126 41 35) (20 . 15)
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
			#((212 . 100.2089903603457) (247.5 . 100.2089906359996)
			  (283 . 100.2089909116536))
			(1 -26 64 21)
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
		  (:fig-pd-state 4 (20 9 6) (283 83 46 34) (20 . 15)
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
		  (:fig-pd-state 3 (20 15 6) (171 85 41 32) (20 . 15)
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
	  (:model (:type . :diagram) (:diagram (:bound 648 285 512 342))
		(:pdprop (:bound 428 285 220 251))
		(:pderror (:bound 428 536 220 251))
		(:ssws (:ch-args (:bound 520 377 256 192))
		  (:guard (:bound 497 354 256 192))
		  (:transform (:bound 474 331 512 342))
		  (:recv-guard (:bound 451 308 256 192)))
		(:model
		  (:fig-pd-trans 14 (3 . :center) (8 . :center)
			#((377.1089506403097 . 125)
			  (369.2062947418205 . 74.11032209785341)
			  (302.7703313339011 . 93.69139412853991))
			(20 20 64 21)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x")
			 (:recv-guard (:text "(not (equal? x 1))"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
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
			 (:label-cache "rch?(x)")))
		  (:fig-pd-trans 13 (0 . :center) (5 . :center)
			#((81.97254717857759 . 153.5138861830611)
			  (62.97304388448494 . 208.0436040486397)
			  (149.1402550396732 . 204.7733226404999))
			(-24 73 64 21)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x")
			 (:recv-guard (:text "(not (equal? x 0))"))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
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
			 (:label-cache "rch?(x)")))
		  (:fig-pd-trans 11 (9 . :center) (5 . :center)
			#((275.0124557725652 . 198.4706913821417)
			  (234.5040407422012 . 198.0784932759127)
			  (193.9956257118373 . 197.6862951696836))
			(-63 9 64 21)
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
			#((206.9999444493659 . 98.53181837363972)
			  (236.5001740710258 . 98.71701889897437)
			  (266.0004036926857 . 98.90221942430901))
			(-1 -30 64 21)
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
		  (:fig-pd-state 9 (11 6) (275 184 40 30) (20 . 15)
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
		  (:fig-pd-state 8 (14 10 4) (266 84 38 30) (20 . 15)
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
			#((152.1057882664955 . 189.9716498848936)
			  (131.8264840937424 . 170.2037541236056)
			  (111.5471799209893 . 150.4358583623175))
			(-10 -37 64 21)
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
			#((359.0833267854866 . 150.0827295733494)
			  (335.6954086972454 . 170.7829223745571)
			  (312.3074906090042 . 191.4831151757648))
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
		  (:fig-pd-state 5 (13 11 7) (149 183 45 35) (20 . 15)
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
			#((302.3141081333143 . 105.177179294755)
			  (329.3453776484644 . 119.854154827508)
			  (356.3766471636144 . 134.5311303602607))
			(-40 20 64 21)
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
		  (:fig-pd-state 3 (14 6 4) (355 125 47 31) (20 . 15)
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
			#((114.8919909155206 . 130.0766239147374)
			  (140.6264652905117 . 116.7357206111302)
			  (166.3609396655028 . 103.3948173075231))
			(-46 -44 93 24)
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
		  (:fig-pd-state 1 (10 2) (165 85 42 27) (20 . 15)
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
		  (:fig-pd-state 0 (13 7 2) (73 120 43 36) (20 . 15)
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
		(:compoprops (:graph (:show . #t) (:bound 637 200 734 350))
		  (:trans (:show . #t) (:bound 60 200 577 161))
		  (:proctree (:show . #t) (:bound 140 542 468 151))
		  (:procexpr (:show . #f) (:bound 481 394 200 150))
		  (:procprop (:show . #f) (:bound 503 416 200 150))
		  (:trace (:show . #t) (:bound 110 350 542 221))))
	  (:model (:type . :text)
		(:text "(define-process SYS" "  (hpar (list sch rch) "
		  "\x09;(hpar (list send_to_r.0 send_to_r.1) S0 (RC0 N))"
		  "\x09;(hpar (list send_to_s.0 send_to_s.1) R0 (SC0 N))))" "")
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
	  (:init-pexpr . "(RC0 N)")
	  (:pe-prop
		(:compoprops (:graph (:show . #t) (:bound 315 115 1013 402))
		  (:trans (:show . #t) (:bound 115 115 200 150))
		  (:proctree (:show . #f) (:bound 137 287 200 150))
		  (:procexpr (:show . #f) (:bound 159 309 200 150))
		  (:procprop (:show . #f) (:bound 181 331 200 150))
		  (:trace (:show . #f) (:bound 115 265 200 150))))
	  (:csp-trans-error-info)
	  (:model (:type . :diagram) (:diagram (:bound 704 11 547 456))
		(:pdprop (:bound 480 12 220 251))
		(:pderror (:bound 636 262 220 251))
		(:ssws (:ch-args (:bound 728 103 256 192))
		  (:guard (:bound 705 80 256 192))
		  (:transform (:bound 476 289 512 342))
		  (:recv-guard (:bound 659 34 256 192)))
		(:model
		  (:fig-pd-trans 17 (3 . :center) (10 . :center)
			#((250.2881806698306 . 249.7728325864765)
			  (256.187239969436 . 227.8645599947133)
			  (262.0862992690412 . 205.9562874029499))
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
			#((200.0431099992667 . 268.4977975165319)
			  (162.4180896590117 . 274.0989406238903)
			  (124.7930693187569 . 279.7000837312488))
			(-43 25 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "(< 0 n)")) (:ch-args (:text ""))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0) (:label "[(< 0 n)]") (:label-macro . #f)
			 (:label-cache "[(< 0 n)]")))
		  (:fig-pd-trans 15 (11 . :center) (0 . :center)
			#((75.88109327126125 . 269.4690922520633)
			  (47.22821150205144 . 197.4725721790144)
			  (64.49842953447148 . 138.6756784829198))
			(-101 -60 80 21)
			((:type . :send) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text "'e"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "(- n 1)")) (:line-width . 1)
			 (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args) \" / (- n 1)\")))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					" / (- n 1)")))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "rch!'e / (- n 1)")))
		  (:fig-pd-trans 14 (1 . :center) (9 . :center)
			#((175.0062757792782 . 23.6242568969767)
			  (144.9270054209814 . 20.7993404964472)
			  (114.8477350626847 . 17.9744240959177))
			(-58 -32 64 21)
			((:type . :tau) (:event . "") (:channel . "")
			 (:guard (:text "(< 0 n)")) (:ch-args (:text ""))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0) (:label "[(< 0 n)]") (:label-macro . #f)
			 (:label-cache "[(< 0 n)]")))
		  (:fig-pd-trans 13 (9 . :center) (0 . :center)
			#((63.1471655549431 . 29.1810668503876)
			  (49.18585084624267 . 67.8320444231819)
			  (63.88424481366813 . 113.5880284706088))
			(-92 57 73 21)
			((:type . :send) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text "'e"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "(- n 1)")) (:line-width . 1)
			 (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args) \" / (- n 1)\")))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					" / (- n 1)")))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "rch!'e / (- n 1)")))
		  (:fig-pd-trans 12 (1 . :center) (8 . :center)
			#((235.0972209109929 . 35.8382712114544)
			  (246.063840851564 . 51.316113314679)
			  (256.9254631431505 . 68.92394037004637))
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
		  (:fig-pd-state 11 (16 15) (68 267 57 30) (17.5 . 15)
			((:name . "RC6") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(RC6 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-state 10 (17 6) (251 174 59 33) (17.5 . 15)
			((:name . "RC5") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(RC5 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-state 9 (14 13) (54 1 61 30) (17.5 . 15)
			((:name . "RC4") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(RC4 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-state 8 (12 4) (248 67 64 33) (17.5 . 15)
			((:name . "RC3") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(RC3 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-trans 6 (10 . :center) (0 . :center)
			#((251.8332632169493 . 184.4265275547577)
			  (197.0081626690661 . 162.7538135523037)
			  (119.1406001068201 . 129.8338522279045))
			(-38 -33 64 21)
			((:type . :send) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text "1"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "N")) (:line-width . 1)
			 (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args) \" / N\")))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					" / N")))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "rch!1 / N")))
		  (:fig-pd-trans 5 (0 . :center) (3 . :center)
			#((114.3710107611531 . 135.40082330168)
			  (158.7331780396016 . 193.4548568906599)
			  (206.3503758798584 . 254.4266034303201))
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
			#((248.6461473914424 . 89.03837581254629)
			  (193.7743063011038 . 107.1751879660244)
			  (119.790046642271 . 124.0944897846606))
			(-51 15 64 21)
			((:type . :send) (:event . "rch") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text "0"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "N")) (:line-width . 1)
			 (:line-color . 0) (:label-color . 0)
			 (:label ",(case &type" "   ((tau) '(\"\"))"
			   "   ((event) (list &event))"
			   "   ((send) (list (string-append &channel \"!\" (car &ch-args) \" / N\")))"
			   "   ((receive) (list (string-append \"[\" (car &recv-guard) \"] \" &channel \"?(\" &ch-params \")\"))))"
			   )
			 (:label-macro case user::&type ((user::tau) (quote ("")))
			   ((user::event) (list user::&event))
			   ((user::send)
				(list
				  (string-append user::&channel "!" (car user::&ch-args)
					" / N")))
			   ((user::receive)
				(list
				  (string-append "[" (car user::&recv-guard) "] "
					user::&channel "?(" user::&ch-params ")"))))
			 (:label-cache "rch!0 / N")))
		  (:fig-pd-state 3 (17 16 5) (200 249 69 36) (26.5 . 17.5)
			((:name . "RC2") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(RC2 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-trans 2 (0 . :center) (1 . :center)
			#((114.4238371240261 . 116.6387632073403)
			  (144.0098795329936 . 78.4127409623683)
			  (179.8704387992101 . 35.8102860586605))
			(-42 -50 64 21)
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
		  (:fig-pd-state 1 (14 12 2) (175 9 65 32) (20 . 15)
			((:name . "RC1") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(RC1 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-state 0 (15 13 6 5 4 2) (53 110 67 32) (29.5 . 17)
			((:name . "RC0") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(RC0 n)") (:abstract . :no)
			 (:scope . :global) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0))))))
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
			 (:guard (:text "(< 0 n)")) (:ch-args (:text ""))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
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
			 (:transform (:text "(- n 1)")) (:line-width . 1)
			 (:line-color . 0) (:label-color . 0)
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
			((:name . "SC6") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(SC6 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-state 22 (26 6) (364 199 45 30) (26 . 17.5)
			((:name . "SC5") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(SC5 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
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
			 (:guard (:text "(< 0 n)")) (:ch-args (:text ""))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "")) (:line-width . 1) (:line-color . 0)
			 (:label-color . 0)
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
			 (:transform (:text "(- n 1)")) (:line-width . 1)
			 (:line-color . 0) (:label-color . 0)
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
			((:name . "SC4") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(SC4 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-state 17 (21 3) (343 92 48 31) (29 . 16)
			((:name . "SC3") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(SC3 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
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
			 (:transform (:text "N")) (:line-width . 1)
			 (:line-color . 0) (:label-color . 0)
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
			((:name . "SC2") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(SC2 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-trans 3 (17 . :center) (0 . :center)
			#((343.3014980058222 . 109.9491481039037)
			  (285.8981259292305 . 126.3866095234479)
			  (212.3347325646424 . 151.4927387745754))
			(-44 26 64 21)
			((:type . :send) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text "0"))
			 (:ch-params . "") (:recv-guard (:text ""))
			 (:transform (:text "N")) (:line-width . 1)
			 (:line-color . 0) (:label-color . 0)
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
			((:name . "SC1") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(SC1 n)") (:abstract . :no)
			 (:scope . :local) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))
		  (:fig-pd-state 0 (24 19 6 5 3 2) (165 140 48 30) (24 . 17)
			((:name . "SC0") (:base-state . "") (:state-vars . "n")
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
			 (:label-cache "(SC0 n)") (:abstract . :no)
			 (:scope . :global) (:line-width . 1) (:line-color . 0)
			 (:paint-color . 8) (:label-color . 0)))))))))
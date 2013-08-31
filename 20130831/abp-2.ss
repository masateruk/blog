((:version . 0) (:type . :syncstitch-model)
 (:definitions (:type . :text)
   (:text "(define-channel sch (x) '((0) (1)))"
	 "(define-channel rch (x) '((0) (1)))" "" "(define-event send.0)"
	 "(define-event send.1)" "(define-event recv.0)"
	 "(define-event recv.1)" "" "(define-event send_to_s.0)"
	 "(define-event send_to_s.1)" "(define-event send_to_r.0)"
	 "(define-event send_to_r.1)" "")
   (:bound 494 8 512 342))
 (:assertions
   (:assertion-list
	 ((:id . 0) (:expr-string . "(deadlock SYS)")
	  (:pe-props ()
		((:compoprops (:graph (:show . #t) (:bound 384 184 512 342))
		   (:trans (:show . #t) (:bound 184 184 200 150))
		   (:proctree (:show . #f) (:bound 206 356 200 150))
		   (:procexpr (:show . #f) (:bound 228 378 200 150))
		   (:procprop (:show . #f) (:bound 250 400 200 150))
		   (:trace (:show . #f) (:bound 184 334 200 150))))))
	 ((:id . 2) (:expr-string . "(trace SPEC SYS)") (:pe-props () ()))
	 ((:id . 3) (:expr-string . "(failure SPEC SYS)") (:pe-props () ()))
	 )
   (:bound 851 69 378 181) (:show . #f))
 (:status-window (:bound 24 246 378 181) (:show . #f))
 (:processes (:bound 9 17 378 181)
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
	  (:model (:type . :diagram) (:diagram (:bound 440 158 512 342))
		(:pdprop (:bound 221 159 220 251))
		(:pderror (:bound 220 409 220 251))
		(:ssws (:ch-args (:bound -37 118 256 192))
		  (:guard (:bound 146 -3 256 192))
		  (:transform (:bound -312 43 512 342))
		  (:recv-guard (:bound 243 181 256 192)))
		(:model
		  (:fig-pd-trans 19 (8 . :center) (16 . :center)
			#((313.6542622429257 . 112.4671297822744)
			  (288.6075818570811 . 131.1442303087037)
			  (263.5609014712363 . 149.8213308351331))
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
		  (:fig-pd-state 16 (19 11) (218 142 48 31) (20 . 15)
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
			#((59.93579443145074 . 95.36314502656441)
			  (81.00358506995141 . 81.50544421825755)
			  (102.0713757084521 . 67.64774340995068))
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
		  (:fig-pd-state 14 (12 15) (22 87 40 33) (20 . 15)
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
			#((103.3046248015029 . 147.7409896823504)
			  (81.3873377902431 . 130.0216417757393)
			  (59.47005077898325 . 112.3022938691282))
			(-69 -12 64 21)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(= x 1)"))
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
		  (:fig-pd-trans 11 (16 . :center) (10 . :center)
			#((218.0004850844719 . 158.1044713753063)
			  (182.500242542236 . 158.2692661548098)
			  (147 . 158.4340609343132))
			(-58 11 64 21)
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
		  (:fig-pd-state 10 (12 11) (100 141 47 36) (20 . 15)
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
			#((256.9073436686886 . 65.89011246385822)
			  (284.7330821205824 . 80.04218558403791)
			  (312.5588205724762 . 94.1942587042176))
			(21 -6 64 21)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(= x 0)"))
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
		  (:fig-pd-state 8 (19 9) (311 85 41 35) (20 . 15)
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
			#((141 . 59.2089903603457) (176.5 . 59.20899063599961)
			  (212 . 59.2089909116536))
			(1 -27 64 21)
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
		  (:fig-pd-state 4 (9 6) (212 42 46 34) (20 . 15)
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
		  (:fig-pd-state 3 (15 6) (100 44 41 32) (20 . 15)
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
		  (:fig-pd-trans 11 (9 . :center) (5 . :center)
			#((247.0124557725652 . 154.4706913821417)
			  (206.5040407422012 . 154.0784932759127)
			  (165.9956257118373 . 153.6862951696836))
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
			#((178.9999444493659 . 54.53181837363972)
			  (208.5001740710258 . 54.71701889897437)
			  (238.0004036926857 . 54.90221942430901))
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
		  (:fig-pd-state 9 (11 6) (247 140 40 30) (20 . 15)
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
		  (:fig-pd-state 8 (10 4) (238 40 38 30) (20 . 15)
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
			#((124.1057882664955 . 145.9716498848936)
			  (103.8264840937424 . 126.2037541236056)
			  (83.54717992098929 . 106.4358583623175))
			(-81 -18 64 21)
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
			#((331.0833267854866 . 106.0827295733494)
			  (307.6954086972454 . 126.7829223745571)
			  (284.3074906090042 . 147.4831151757648))
			(-22 23 64 21)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(= x 1)"))
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
		  (:fig-pd-state 5 (11 7) (121 139 45 35) (20 . 15)
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
			#((274.3141081333143 . 61.17717929475496)
			  (301.3453776484644 . 75.85415482750796)
			  (328.3766471636144 . 90.53113036026073))
			(19 -11 64 21)
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
		  (:fig-pd-state 3 (6 4) (327 81 47 31) (20 . 15)
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
			#((86.89199091552061 . 86.07662391473734)
			  (112.6264652905117 . 72.73572061113021)
			  (138.3609396655028 . 59.39481730752306))
			(-22 -38 64 21)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(= x 0)"))
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
		  (:fig-pd-state 1 (10 2) (137 41 42 27) (20 . 15)
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
		  (:fig-pd-state 0 (7 2) (45 76 43 36) (20 . 15)
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
		(:pderror (:bound 420 519 220 251))
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
	 ((:id . 4) (:type . :diagram) (:init-pexpr . "") (:name . "RecvCh")
	  (:csp-trans-error-info)
	  (:model (:type . :diagram) (:diagram (:bound 377 318 512 342))
		(:pdprop (:bound 157 318 220 251))
		(:pderror (:bound 157 569 220 251))
		(:ssws (:ch-args (:bound 249 410 256 192))
		  (:guard (:bound 226 387 256 192))
		  (:transform (:bound 203 364 512 342))
		  (:recv-guard (:bound 180 341 256 192)))
		(:model
		  (:fig-pd-trans 6 (3 . :center) (0 . :center)
			#((222.0238453652361 . 191.6456997162155)
			  (162.4005770517828 . 180.3280812274437)
			  (124.596466144962 . 134.4203534448186))
			(-97 -13 64 21)
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
			#((131.7233843355637 . 125.776847871717)
			  (188.4637116190468 . 146.6364347673573)
			  (227.0863027661038 . 182.1908437736069))
			(60 10 64 21)
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
		  (:fig-pd-trans 4 (1 . :center) (0 . :center)
			#((216.7757652561959 . 72.54466782780045)
			  (184.2071159959025 . 105.6528685039165)
			  (131.8647127636614 . 121.9054863976429))
			(-21 22 64 21)
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
		  (:fig-pd-state 3 (6 5) (222 175 46 35) (26.5 . 17.5)
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
			#((126.7817888729677 . 114.1049581256069)
			  (163.7745278321513 . 76.55006383419125)
			  (211.124295715917 . 63.66971952931456))
			(-24 -60 64 21)
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
		  (:fig-pd-state 1 (4 2) (211 45 43 32) (20 . 15)
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
		  (:fig-pd-state 0 (6 5 4 2) (87 108 45 31) (29.5 . 17)
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
	  (:model (:type . :diagram) (:diagram (:bound 767 104 512 342))
		(:pdprop (:bound 547 104 220 251))
		(:pderror (:bound 547 355 220 251))
		(:ssws (:ch-args (:bound 639 196 256 192))
		  (:guard (:bound 616 173 256 192))
		  (:transform (:bound 593 150 512 342))
		  (:recv-guard (:bound 570 127 256 192)))
		(:model
		  (:fig-pd-trans 6 (4 . :center) (0 . :center)
			#((218.0392595157353 . 167.1142769686703)
			  (170.4816327073322 . 156.3497932469686)
			  (142.4398228444343 . 117.4838859680316))
			(-93 -12 64 21)
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
			#((150.5300721618769 . 108.9537915290711)
			  (193.6129316113111 . 129.5195738142203)
			  (222.9867162237859 . 158.5828786806206))
			(56 1 64 21)
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
		  (:fig-pd-state 4 (6 5) (218 153 45 30) (26 . 17.5)
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
		  (:fig-pd-trans 3 (1 . :center) (0 . :center)
			#((215.9204650004497 . 55.52257708612058)
			  (194.1200735381225 . 81.01326176185657)
			  (150.2983115956511 . 102.3993990957264))
			(-9 19 64 21)
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
			#((142.2162011743435 . 94.40010739169615)
			  (161.7471510920732 . 65.62389851311613)
			  (210.1610403007425 . 46.8504054158993))
			(-37 -58 64 21)
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
		  (:fig-pd-state 1 (3 2) (210 30 48 31) (29 . 16)
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
		  (:fig-pd-state 0 (6 5 3 2) (103 91 48 30) (24 . 17)
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
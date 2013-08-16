((:version . 0) (:type . :syncstitch-model)
 (:definitions (:type . :text)
   (:text "(define-channel sch (x) '((0) (1)))"
	 "(define-channel rch (x) '((0) (1)))" "" "(define-event send.0)"
	 "(define-event send.1)" "(define-event recv.0)"
	 "(define-event recv.1)" "")
   (:bound 494 8 512 342))
 (:assertions
   (:assertion-list
	 ((:id . 0) (:pe-props () ()) (:expr-string . "(deadlock SYS)"))
	 ((:id . 2) (:expr-string . "(trace SPEC SYS)") (:pe-props () ()))
	 ((:id . 3) (:expr-string . "(failure SPEC SYS)") (:pe-props () ()))
	 )
   (:bound 895 31 378 181) (:show . #t))
 (:status-window (:bound 23 179 378 181) (:show . #t))
 (:processes (:bound 19 1 378 181)
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
	  (:model (:type . :diagram) (:diagram (:bound 563 228 512 342))
		(:pdprop (:bound 344 229 220 251))
		(:pderror (:bound 344 480 220 251))
		(:ssws (:ch-args (:bound 86 188 256 192))
		  (:guard (:bound 269 67 256 192))
		  (:transform (:bound -189 113 512 342))
		  (:recv-guard (:bound 366 251 256 192)))
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
			#((58.78414543807257 . 94.5271071058458)
			  (75.21743859192642 . 81.73338753033065)
			  (103.7874725439778 . 64.19846045892015))
			(-28 -39 64 21)
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
		  (:fig-pd-state 14 (12 15) (22 87 40 33) (20 . 16.5)
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
			#((102.9460293479841 . 148.7283249998651)
			  (81.08760263597571 . 130.6728685483105)
			  (59.22917592396734 . 112.6174120967559))
			(-94 -3 91 20)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(= x 1)"))
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
			 (:label-cache "[(= x 1)] sch?(x)")))
		  (:fig-pd-trans 11 (16 . :center) (10 . :center)
			#((218.0004850844719 . 158.1044713753063)
			  (182.500242542236 . 158.2692661548098)
			  (147 . 158.4340609343132))
			(-57 -27 64 21)
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
		  (:fig-pd-state 10 (12 11) (100 141 47 36) (23.5 . 18)
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
			#((260.9999224266107 . 65.68392550408416)
			  (287.020811296426 . 79.54069594091629)
			  (313.0417001662413 . 93.3974663777484))
			(21 -6 111 22)
			((:type . :receive) (:event . "") (:channel . "sch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(= x 0)"))
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
			 (:label-cache "[(= x 0)] sch?(x)")))
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
			#((143 . 57.36142777168875) (179.5 . 57.36142693560591)
			  (216 . 57.36142609952314))
			(11 -27 64 21)
			((:type . :send) (:event . "") (:channel . "rch")
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
		  (:fig-pd-state 4 (9 6) (216 42 46 34) (20 . 15)
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
		  (:fig-pd-state 3 (15 6) (102 41 41 32) (20 . 15)
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
			(-68 -29 64 21)
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
			(4 -26 64 21)
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
			(-61 -20 64 21)
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
		  (:fig-pd-trans 6 (3 . :center) (9 . :center)
			#((331.0833267854866 . 106.0827295733494)
			  (307.6954086972454 . 126.7829223745571)
			  (284.3074906090042 . 147.4831151757648))
			(-22 23 90 22)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(= x 1)"))
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
			 (:label-cache "[(= x 1)] rch?(x)")))
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
			  (301.3453776484645 . 75.85415482750796)
			  (328.3766471636144 . 90.53113036026073))
			(25 -8 64 21)
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
			(-55 -41 89 21)
			((:type . :receive) (:event . "") (:channel . "rch")
			 (:guard (:text "")) (:ch-args (:text ""))
			 (:ch-params . "x") (:recv-guard (:text "(= x 0)"))
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
			 (:label-cache "[(= x 0)] rch?(x)")))
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
		(:text "(define-process SYS" "  (hpar (list sch rch) S0 R0))" ""
		  )
		(:bound 117 373 512 342)))
	 ((:id . 3) (:type . :diagram) (:init-pexpr . "") (:name . "SPEC")
	  (:csp-trans-error-info)
	  (:model (:type . :diagram) (:diagram (:bound 419 222 512 342))
		(:pdprop (:bound 199 222 220 251))
		(:pderror (:bound 199 473 220 251))
		(:ssws (:ch-args (:bound 291 314 256 192))
		  (:guard (:bound 268 291 256 192))
		  (:transform (:bound 245 268 512 342))
		  (:recv-guard (:bound 222 245 256 192)))
		(:model
		  (:fig-pd-trans 8 (4 . :center) (1 . :center)
			#((166.8597348277645 . 161.2705846419786)
			  (140.278016629892 . 141.1298622074439)
			  (113.6962984320194 . 120.9891397729092))
			(-78 -22 64 21)
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
			(-24 24 64 21)
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
			#((207.3799807875879 . 68.42220658904611)
			  (233.9504820299465 . 85.34226896297896)
			  (260.5209832723051 . 102.2623313369118))
			(20 -7 64 21)
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
			#((113.3864900008661 . 102.5863736561988)
			  (141.4589805902452 . 84.67150282040136)
			  (169.5314711796245 . 66.75663198460391))
			(-11 -41 64 21)
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
		  (:fig-pd-state 2 (6 5) (168 46 42 30) (20 . 15)
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
		  (:fig-pd-state 1 (8 5) (64 95 52 34) (20 . 15)
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
			 (:label-color . 0)))))))))
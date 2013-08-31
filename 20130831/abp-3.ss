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
		   (:proctree (:show . #f) (:bound 206 356 200 150))
		   (:procexpr (:show . #f) (:bound 228 378 200 150))
		   (:procprop (:show . #f) (:bound 250 400 200 150))
		   (:trace (:show . #f) (:bound 184 334 200 150))))))
	 ((:id . 2) (:expr-string . "(trace SPEC SYS)") (:pe-props () ()))
	 ((:id . 3) (:expr-string . "(failure SPEC SYS)") (:pe-props () ()))
	 )
   (:bound 12 447 378 181) (:show . #t))
 (:status-window (:bound 20 184 378 181) (:show . #t))
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
	  (:model (:type . :diagram) (:diagram (:bound 640 229 512 342))
		(:pdprop (:bound 420 229 220 251))
		(:pderror (:bound 420 480 220 251))
		(:ssws (:ch-args (:bound 178 188 256 192))
		  (:guard (:bound 345 67 256 192))
		  (:transform (:bound -78 113 512 342))
		  (:recv-guard (:bound 442 251 256 192)))
		(:model
		  (:fig-pd-trans 19 (8 . :center) (16 . :center)
			#((313.3994060047312 . 112.1237798039531)
			  (288.108065726373 . 132.0022183734404)
			  (262.8167254480147 . 151.8806569429277))
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
		  (:fig-pd-state 16 (19 11) (218 145 48 31) (20 . 15)
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
			(-96 -11 92 23)
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
			#((218.0164134162712 . 159.3924225740941)
			  (182.5082067081356 . 158.4340624122722)
			  (147 . 157.4757022504502))
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
	  (:model (:type . :diagram) (:diagram (:bound 714 36 482 389))
		(:pdprop (:bound 494 36 220 251))
		(:pderror (:bound 494 287 220 251))
		(:ssws (:ch-args (:bound 586 128 256 192))
		  (:guard (:bound 563 105 256 192))
		  (:transform (:bound 540 82 512 342))
		  (:recv-guard (:bound 517 59 256 192)))
		(:model
		  (:fig-pd-trans 17 (3 . :center) (10 . :center)
			#((304.671328207147 . 267.4205691632839)
			  (316.6923936264724 . 243.9278740898978)
			  (328.7134590457978 . 220.4351790165118))
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
			#((270.0450906167383 . 283.5952651204821)
			  (223.9875943346024 . 288.1279519032863)
			  (177.9300980524664 . 292.6606386860906))
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
			#((149.5438689621235 . 279.2155580848854)
			  (145.684328610043 . 239.5463265053641)
			  (159.2859233724818 . 155.9301906816646))
			(-46 -71 64 21)
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
			#((245.0062757792782 . 39.62425689697673)
			  (214.9270054209814 . 36.79934049644723)
			  (184.8477350626847 . 33.97442409591766))
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
			#((146.7066376527476 . 42.2348700426119)
			  (119.9168219592714 . 86.51982129827297)
			  (149.1291635621461 . 132.5507428765648))
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
			#((283.3624861914274 . 51.60451118668928)
			  (302.4128601267887 . 70.3233416897061)
			  (321.46323406215 . 89.04217219272292))
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
		  (:fig-pd-state 11 (16 15) (135 279 43 30) (17.5 . 15)
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
		  (:fig-pd-state 10 (17 6) (321 193 43 30) (17.5 . 15)
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
		  (:fig-pd-state 9 (14 13) (142 17 43 30) (17.5 . 15)
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
		  (:fig-pd-state 8 (12 4) (318 83 43 30) (17.5 . 15)
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
			#((321.6232851957693 . 204.0323915932413)
			  (282.6898843042596 . 190.11040317524)
			  (188.4978356100955 . 147.0685450192424))
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
			#((183.6757942715374 . 152.2738715986085)
			  (228.3357891271398 . 209.9391375602958)
			  (276.2645383484148 . 270.4955054090532))
			(-10 72 64 21)
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
			#((318.7027248473715 . 102.2079994473305)
			  (263.7992715895409 . 121.0616094198709)
			  (189.6885124403391 . 138.9297966671966))
			(-67 -5 64 21)
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
		  (:fig-pd-state 3 (17 16 5) (270 265 46 35) (26.5 . 17.5)
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
			#((184.5753089475671 . 131.4063360493584)
			  (214.1837370821381 . 93.82013314848803)
			  (250.0485971505801 . 51.9627430193359))
			(-37 -59 64 21)
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
		  (:fig-pd-state 1 (14 12 2) (245 25 43 32) (20 . 15)
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
		  (:fig-pd-state 0 (15 13 6 5 4 2) (145 126 45 31) (29.5 . 17)
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
	  (:model (:type . :diagram) (:diagram (:bound 293 208 571 416))
		(:pdprop (:bound 31 197 220 251))
		(:pderror (:bound 31 448 220 251))
		(:ssws (:ch-args (:bound 165 300 256 192))
		  (:guard (:bound 142 277 256 192))
		  (:transform (:bound 119 254 512 342))
		  (:recv-guard (:bound 96 231 256 192)))
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
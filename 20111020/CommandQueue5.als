-- 3番目のモデル。キューイングするのはひとつだけ
module CommandQueue

open util/ordering[Time] as to
sig Time {}

sig State {}
one sig InitDone, AssignAdded, CopyAdded, Executing, ExecuteDone extends State {}

abstract sig Value {}
one sig Zero, One, Two extends Value {} 

abstract sig Command {}

sig Copy extends Command {
	src : one Object
}

sig Assign extends Command {
	v : one Value    
}

sig Object {
	expected : Value one -> Time,
	real : Value one -> Time,
	q : (seq Command)-> Time,
	state : State one -> Time
}

pred init [t : Time] {
	all obj : Object | (no obj.q.t and obj.real.t = obj.expected.t and obj.state.t = InitDone)
}

pred noChangeRealValue [t, t' : Time, obj : Object] {
	obj.real.t' = obj.real.t
}

pred assign [t, t' : Time, obj : Object] {
     no obj' : Object | obj'.state.t = Executing // pre-condition 
     some assign : Assign { 
     	  obj.q.t' = (obj.q.t).add[assign]
	  obj.expected.t' = assign.v
	  noChangeRealValue[t, t', obj]
	  obj.state.t' = AssignAdded
     }
}

pred copy [t, t' : Time, obj : Object] {
     no obj' : Object | obj'.state.t = Executing // pre-condition 
     some cp : Copy { 
     	  obj.q.t' = (obj.q.t).add[cp]
	  obj.expected.t' = cp.src.expected.t
	  noChangeRealValue[t, t', obj]
	  obj.state.t' = CopyAdded
    }
}

pred executeCommand [t, t' : Time, obj : Object] {
     let command = first[obj.q.t] {
		(command in Assign) => (obj.real.t' = command.v and obj.q.t' = rest[obj.q.t] and obj.expected.t' = obj.expected.t)
		(command in Copy) => (obj.real.t' = command.src.real.t and obj.q.t' = rest[obj.q.t] and obj.expected.t' = obj.expected.t)
		(isEmpty[obj.q.t'] => obj.state.t' = ExecuteDone) and (not isEmpty[obj.q.t'] => obj.state.t' = Executing)
	}
}

pred execute [t, t' : Time, obj : Object] {
	some q.t // pre-condition
	no obj : Object | obj.state.t = Executing // pre-condition 
	executeCommand[t, t', obj]
}

pred executeRest [t, t' : Time, obj : Object] {
  	 obj.state.t = Executing // pre-condition
	 executeCommand[t, t', obj]			    	  
}

pred noChangeAll [t, t' : Time, obj : Object] {
	obj.expected.t' = obj.expected.t
	obj.real.t' = obj.real.t
	obj.q.t' = obj.q.t
	obj.state.t' = obj.state.t
}

fact step {
	init[to/first[]]
	all t : Time - to/last[] | let t' = to/next[t] |
		one obj : Object |
			(assign[t, t', obj]
			or copy[t, t', obj]
			or execute[t, t', obj]
			or executeRest[t, t', obj])
			and (all obj' : Object | obj' != obj => noChangeAll[t, t', obj'])
}

pred addCommandAtThatTime [t : Time, obj : Object] {
	let before = to/prev[t] | #(obj.q.before) < #(obj.q.t)
}

fact ExecuteDoneBeforeChangingTarget {
	all disj obj1, obj2 : Object {
		all disj t1, t2 : Time - to/last[] {
			(to/lt[t1, t2] and addCommandAtThatTime[t1, obj1] and addCommandAtThatTime[t2, obj2]) implies {
				obj1.state.t2 = ExecuteDone
			}
		}
	}
}

pred show() {}
run show for 3 but exactly 2 Object, 2 Time

assert RealValueEqualsExpectedAfterExecute {
	all t : Time |
		all obj : Object | 
			obj.state.t = ExecuteDone => obj.real.t = obj.expected.t
}
check RealValueEqualsExpectedAfterExecute for 3 but exactly 2 Object, 5 Time, 5 seq

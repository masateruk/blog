-- 最初のモデル。execute の定義が間違っている。
module CommandQueue

open util/ordering[Time] as to

sig Time {}

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
	q : (seq Command)-> Time
}

pred noChangeRealValue [t, t' : Time, obj : Object] {
	obj.real.t' = obj.real.t
}

pred noChangeAll [t, t' : Time, obj : Object] {
	obj.expected.t' = obj.expected.t
	obj.real.t' = obj.real.t
	obj.q.t' = obj.q.t
}

pred noChangeValuesAndQ [t, t' : Time, obj : Object] {
	obj.expected.t' = obj.expected.t
	obj.real.t' = obj.real.t
	obj.q.t' = obj.q.t
}

pred assign [t, t' : Time, obj : Object] {
     some assign : Assign | obj.q.t' = (obj.q.t).add[assign] and obj.expected.t' = assign.v and noChangeRealValue[t, t', obj]
}

pred copy [t, t' : Time, obj : Object] {
     some cp : Copy | obj.q.t' = (obj.q.t).add[cp] and obj.expected.t' = cp.src.expected.t and noChangeRealValue[t, t', obj]
}

pred init [t : Time] {
	all obj : Object | (no obj.q.t and obj.real.t = obj.expected.t)
}

pred execute [t, t' : Time, obj : Object] {
     isEmpty[obj.q.t']
     let command = last[obj.q.t] {
		(command in Assign) => (obj.real.t' = command.v and obj.expected.t' = obj.expected.t)
		(command in Copy) => (obj.real.t' = command.src.real.t and  obj.expected.t' = obj.expected.t)
	}
}

fact step {
	init[to/first[]]
	all t : Time - to/last[] | let t' = to/next[t] |
		one obj : Object |     // (a)
			(assign[t, t', obj]
			or copy[t, t', obj]
			or execute[t, t', obj])
			and (all obj' : Object | obj' != obj => noChangeAll[t, t', obj'])  // (b)
}

pred show() {
}
run show for 3 but exactly 2 Object

assert RealValueEqualsExpectedAfterExecute {
	all t : Time - to/last[] | let t' = to/next[t] |
		all obj : Object | 
			execute[t, t', obj] => obj.real.t' = obj.expected.t'
}
check RealValueEqualsExpectedAfterExecute for 3 but exactly 1 Object, 4 Time, 4 seq

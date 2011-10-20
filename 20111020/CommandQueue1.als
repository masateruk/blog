-- assign と copy を追加モデル
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

fact step {
	init[to/first[]]
	all t : Time - to/last[] | let t' = to/next[t] |
		one obj : Object |
			(assign[t, t', obj]
			or copy[t, t', obj])
			and (all obj' : Object | obj' != obj => noChangeAll[t, t', obj'])
}

pred show() {
}
run show for 5 but exactly 2 Object, 3 Command

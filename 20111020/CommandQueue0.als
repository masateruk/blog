-- 状態モデル
module CommandQueue

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
	expected : one Value,
	real : one Value,
	q : seq Command
}

pred show() {
}
run show for 3 but exactly 1 Object

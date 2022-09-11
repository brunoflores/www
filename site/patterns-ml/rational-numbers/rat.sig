signature RAT = sig
  type qnum = int * int

  exception QDiv (* Division by zero *)

  val mkQ : int * int -> qnum

  val ++ : qnum * qnum -> qnum
  val -- : qnum * qnum -> qnum
  val ** : qnum * qnum -> qnum
  val // : qnum * qnum -> qnum
  val == : qnum * qnum -> bool

  val toString : qnum -> string
end

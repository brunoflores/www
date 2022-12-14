structure Rat :> RAT = struct
  type qnum = int * int

  exception QDiv

  fun mkQ (_, 0) = raise QDiv
    | mkQ pr     = pr : qnum

  infix 6 ++
  infix 6 --
  infix 7 **
  infix 7 //
  infix 4 ==

  fun (a, b) ++ (c, d) = (a*d + b*c, b*d)
  fun (a, b) -- (c, d) = (a*d - b*c, b*d)
  fun (a, b) ** (c, d) = (a*c, b*d)
  fun (a, b) // (c, d) = (a, b) ** mkQ (d, c)
  fun (a, b) == (c, d) = (a*d = b*c)

  fun gcd (0, n) = n
    | gcd (m, n) = gcd (n mod m, m)

  fun toString (p, q) =
    let val sign = if p*q < 0 then "~" else ""
        val ap = abs p
        val aq = abs q
        val d = gcd (ap, aq)
    in
        sign ^ (Int.toString (ap div d))
             ^ "/" ^ (Int.toString (aq div d))
    end
end

structure Main = struct

  fun main(arg0, argv) = (
    let val test1 = Rat.mkQ (2, ~3)
    in print (Rat.toString test1); print "\n" end;

    print "hello\n";

    OS.Process.success
  )

  val _ = SMLofNJ.exportFn("main", main)

end

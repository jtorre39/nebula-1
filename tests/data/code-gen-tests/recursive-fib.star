Origin default "_fib" (0,0,0)
  Argument number "n" <0,0,1>
  Result number <0,0,2>

Function "ternary" (1,0,0)
  Parameter "true" <0,0,1>
    access number "n"
  Parameter "false" <0,0,2>
  Parameter "condition" <0,0,3>
  Return <0,0,4>

Function "lessThanOrEqual" (1,1,0)
  Parameter "p1" <0,0,1>
    access number "n"
  Parameter "p2" <0,0,2>
    initialize number 1
  Return <0,0,3>

Function "add" (2,0,0)
  Parameter "p1" <0,0,1>
  Parameter "p2" <0,0,2>
  Return <0,0,3>

Function "_fib" (3,0,0)
  Parameter "n" <0,0,1>
  Return <0,0,2>

Function "subtract" (3,1,0)
  Parameter "p1" <0,0,1>
    access number "n"
  Parameter "p2" <0,0,2>
    initialize number 1
  Return <0,0,3>

Function "_fib" (4,0,0)
  Parameter "n" <0,0,1>
  Return <0,0,2>

Function "subtract" (4,1,0)
  Parameter "p1" <0,0,1>
    access number "n"
  Parameter "p2" <0,0,2>
    initialize number 2
  Return <0,0,3>


Link (1,0,4) (0,0,2) # ternary return <-> result
Link (1,1,3) (1,0,3) # p1 <= p2 <-> ternary condition
Link (2,0,3) (1,0,2) # p1 + p2 <-> ternary false
Link (3,0,2) (2,0,1) # _fib result <-> p1
Link (3,1,3) (3,0,1) # p1 - p2 <-> _fib n
Link (4,0,2) (2,0,2) # _fib result <-> p2
Link (4,1,3) (4,0,1) # p1 - p2 <-> _fib n

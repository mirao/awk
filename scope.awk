# function bar() # use global i
function bar(  i) # use local i
{
    for (i = 0; i < 3; i++)
        print "bar's i=" i
}

# function foo(j) # use global i
function foo(j,  i) # use local i
{
    i = j + 1
    print "foo's i=" i
    bar()
    print "foo's i=" i
}

BEGIN {
      i = 10
      print "top's i=" i
      foo(0)
      print "top's i=" i
}
$temp = $ARGV[0];# the first argument
print ("Your file is $ARGV[0]".".f90\n\n\n");
unlink ("$ARGV[0].exe"); # delete old executable
$eval=system("gfortran -O3 -o ". 
"$ARGV[0].exe "."$ARGV[0].f90");
if ($eval){die "*****\nCompiling $ARGV[0].f90 fails"}
#system("./$ARGV[0].exe");# powershell for linux like systrem
system("$ARGV[0].exe");#DOS
DEFINE num1 23
DEFINE num2 19
# num1 > num2
# store num1 in register 1

A = num1
D = A
A = 1
*A = D

#store num2 in register 9
# register 9 since that is the line
# at which it loops back to in code
A = num2
D = A
A = 9
*A = D

#reset D
D = 0

#start multiplying
A = 1
D = D+*A

#remove a remaining addition
A = 9
*A = *A-1; JGT
# if wanted more control over which
# *A it uses, could store answer in
# memory and do D=D-1
# at the end set D = *A


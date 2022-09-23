#Варіант 5
#A=TRUE, B= TRUE, C=TRUE
# X=–40, Y=6, z= –12

a = true
b = true
c = true
x = -40
y = 6
z = -12

#a) !(A or B) and (A and !B)
result = !(a || b) && (a && !b)
puts result

#b) (Z!=Y)<=(6>=Y)and A or B and C and X >= 1.5
result1 = (z != y).object_id <= (6>=y).object_id && a || b && c && x >=1.5
puts result1

#c) (8-X*2<=Z)and(X^2 <> Y^2)or(Z>=15)
result2 = (8-x*2<=z)&&(x**2 != y**2)||(z>=15)
puts result2

#d) X>0 and Y<0 or Z ≥ (X*Y + (–Y/X)) – (–Z)
result3 = x>0 && y<0 || z >= (x*y + (-y/x))-(-z)
puts result3

#e) !(a or b and !(c or(!a or b)))
result4 = !(a || b && !(c ||(!a || b)))
puts result4

#f) x^2 + y^2 >= 1 and x>= 0 and y>=0
result5 = x**2 + y**2 >= 1 && x>= 0 && y>=0
puts result5

#g) (a and (c and b != b or a)or c)and b
result6 = (a && (c && b != b || a) || c)&& b
puts result6


#2) ((Ln(x+1)>x) or !p) and (sqrt(x) < x**2 + 2) or (2*x=x)
# x = -0.5; P = true
x = -0.5
p = true
result7 = ((Math.log(x+1)>x) || !p) && (x**2 < (x**2 + 2)) || (2*x==x)
puts result7

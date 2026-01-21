#Single comment line
x<-9
y<-5
#addition of two numbers
c=x+y
print(c)
#multiplication of two numbers
z=x*y
print(z)
#subtraction of two numbers
a=x-5
print(a)
#division of two numbers
b=x/y
print(b)

# first selectlines then ctrl+shift+c for multi line cmt 
# a
# v
# f
# e
# r

#assign value 3 to num_cups_coffee
num_cups_coffee<-3
coffee_price<-20
print(num_cups_coffee)

#calculate the amount spent on cffee using values stored in variables
money_spent_on_coffee=num_cups_coffee*coffee_price
print(money_spent_on_coffee)

#calculate the number of minutes in a year
mins_in_a_year<-365*24*60
#calculate the number of minutes in a leap year
mins_in_a_leap_year<-(365+1)*24*60
print(mins_in_a_leap_year)
print(mins_in_a_year)

#assign character to a variable
famous_writer<-"Olivia"

#comparision operators
num_guitar_strings<-6
num_mandolin_strings<-8
num_mandolin_strings>num_guitar_strings#returns TRUE
num_mandolin_strings<num_guitar_strings#returns false
num_mandolin_strings!=num_guitar_strings#returns TRUE
num_guitar_strings==num_mandolin_strings#returns false

print("Hello World")
print(sqrt(25))
print(min(5,6,2))
print(max(1,2,3,4,5))

smallest_number<-min(1,6/8, 4/3)
print(smallest_number)
print(pi)
write a R code to compute the value of given expression
x1<-2
x2<-3
x4<-60
y=(x1^2)+(2*pi*x2)+sin(x4)+(2*sqrt(x1^2))+(2*x4)
print(y)

#use class to show the data type
class(y)
x=as.character(3.14)
print(x)
class(x)

z=1-2i
z

#paste function 
fname="rahul"
tname="kuty"
paste(fname, tname)

#sustring
substr("mary has a litte lamb", start=3, stop=12)

sub("little", "big", "mary has a little lamb")
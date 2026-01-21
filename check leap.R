#function to check if leap year or not
is_leap_year<-function(year){
  if((year%%4==0 && year%%100!=0)||(year%%400==0)){
    return("the year is a leap year")
  }
  else{
    return("the year is not a leap year")
  }
}

#testing function
print(is_leap_year(2024))#test with a leap year
print(is_leap_year(2023))#test with a common year
print(is_leap_year(2000))#testing with a leap year divisible by 400
print(is_leap_year(1900))#test with a common year divisible by 100

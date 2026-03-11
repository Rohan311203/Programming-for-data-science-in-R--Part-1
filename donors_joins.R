library("dplyr")
#create the donors dataset
donors<-data.frame(DonarName=c("Alice Walton", "Jacquiline Mars", "Mara Franca Fissolo","Susanne Klatten", "Laurene Powell Jobs","Francoise Bettencourt Meyers"),
                   Email=c("aaa","bbb","ccc","ddd","eee","fff"))

#create donations dataset
donations<-data.frame(DonarName=c("Mara Franca Fissolo", "Yang Hiyan", "Mara Franca Fissolo", "Alice Walton", "Susanne Klatten", "Yang Huiyan"),
                      amt=c(100,50,75,25,100,150),
                      date=as.Date(c("2018-02-15","2018-02-15","2018-02-15","2018-02-16","2018-02-17","2018-02-18")))

View(donors)
View(donations)

#perform left join
left_join_result<-left_join(donors, donations, by="DonarName")
print("Left Join Result:")
print(left_join_result)

#perform right join
right_join_result<-right_join(donors, donations, by="DonarName")
print("Right join result:")
print(right_join_result)

#perform inner join
inner_join_result<-inner_join(donors, donations, by="DonarName")
print("Inner join result:")
print(inner_join_result)

#perform outer join
outer_join_result<-full_join(donors, donations, by="DonarName")
print("outer join result:")
print(outer_join_result)
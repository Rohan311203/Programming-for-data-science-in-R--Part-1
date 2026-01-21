#creating a vectors to store names 
names<-c("Alice","Bob","Charlie","David")

#changing all the names to uppecase
names<-toupper(names)
#print the new vector
names

len_vec<-length(names)
#count the number of characters in each namne 
for(i in 1:len_vec){
  x=names[i]
  xx=unlist(strsplit(names[i],""))
  cat("the length of name ", names[i]," is ",length(xx),"\n")
}

#check if any names contain letter a 
grep("A", names, value = TRUE)

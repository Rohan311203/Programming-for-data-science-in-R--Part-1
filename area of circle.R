# functiontocalculatetheareaofacircle
calculate_circle_area<-function(radius){
  return(pi*radius^2)
}
# testingthefunctionwithdifferentinputs
area1<-calculate_circle_area(5)
area2<-calculate_circle_area(10)
area3<-calculate_circle_area(0)
area4<-calculate_circle_area(3.5)
# printingtheresults
cat("Areaofcirclewithradius5:",area1,"\n")
cat("Areaofcirclewithradius10:",area2,"\n")
cat("Areaofcirclewithradius0:",area3,"\n")
cat("Areaofcirclewithradius3.5:",area4,"\n")
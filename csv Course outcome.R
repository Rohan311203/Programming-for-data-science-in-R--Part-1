#creating vectors
RegNo <- c("24BCE1001","24BCE1002","24BCE1003","24BCE1004","24BCE1005", "24BCE1006","24BCE1007","24BCE1008","24BCE1009","24BCE1010")
Name <- c("Aadesh Kumar","Bhavya Reddy","Charan Iyer","Divya Sharma","Esha Nair","Farhan Khan","Gayathri Raj","Harish Kumar","Ishita Menon","Jai Verma")
Programme <- rep("B.Tech",10)
Specialization <- c("CSE","AI","DS","IT","CSE","ECE","Cyber","AI","DS","IT")
Assess1 <- c(18,15,20,14,20,12,17,16,19,18)
Assess2 <- c(17,16,19,15,20,14,18,17,18,17)
Assess3 <- c(19,14,18,15,19,13,17,16,19,16)
Assess4 <- c(18,18,20,16,20,16,19,15,18,19)

#creating a data frame for the above vectors
students <- data.frame(
  RegNo,
  Name,
  Programme,
  Specialization,
  Assess1,
  Assess2,
  Assess3,
  Assess4,
  stringsAsFactors = FALSE
)
str(students)
head(students)

#creating a CSV file for the above data frame
write.csv(students,"students_input.csv",row.names = FALSE,na = "")

#reading the created csv file
students_in <- read.csv("students_input.csv", stringsAsFactors = FALSE)

# Validate required columns
required_cols <- c("RegNo","Name","Programme","Specialization","Assess1","Assess2","Assess3","Assess4")

if(!all(required_cols %in% names(students_in))){
  stop("Required columns missing in CSV")
}

# Ensure numeric columns
students_in$Assess1 <- as.numeric(students_in$Assess1)
students_in$Assess2 <- as.numeric(students_in$Assess2)
students_in$Assess3 <- as.numeric(students_in$Assess3)
students_in$Assess4 <- as.numeric(students_in$Assess4)


# Total marks
students_in$Total <- rowSums(students_in[,c("Assess1","Assess2","Assess3","Assess4")])

# Average marks
students_in$Average <- students_in$Total / 4

# Rank (highest total = rank 1)
students_in$Rank <- rank(-students_in$Total, ties.method = "min")

# Sort by Rank and RegNo
students_sorted <- students_in[order(students_in$Rank, students_in$RegNo),]

# Save ranked results
write.csv(students_sorted,"students_by_rank.csv",row.names = FALSE)

#finding the assessment wise avg
assess_cols <- c("Assess1","Assess2","Assess3","Assess4")

assessment_avg <- colMeans(students_in[,assess_cols], na.rm = TRUE)

assessment_df <- data.frame(
  Assessment = names(assessment_avg),
  Average = as.numeric(assessment_avg)
)

write.csv(assessment_df,"assessment_wise_averages.csv",row.names = FALSE)

#specialization wise average 

spec_avg <- aggregate(
  students_in[,assess_cols],
  by = list(Specialization = students_in$Specialization),
  FUN = function(x) mean(x, na.rm = TRUE)
)

# Overall specialization average
spec_avg$Overall_Average <- rowMeans(spec_avg[,assess_cols],na.rm = TRUE)

# Sort by overall average
spec_avg <- spec_avg[order(-spec_avg$Overall_Average),]

write.csv(spec_avg,"specialization_wise_averages.csv",row.names = FALSE)
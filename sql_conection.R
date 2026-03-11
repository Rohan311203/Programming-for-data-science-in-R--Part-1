#Installing and loading required packages
install.packages("DBI")
install.packages("RSQLite")
install.packages("dplyr")

library(DBI)
library(RSQLite)
library(dplyr)

#Setting working directory 
setwd("C:/Users/Rohan Lekhak/Desktop/Programming for data science/Database")

#Connecting to the SQLite database
con <- dbConnect(RSQLite::SQLite(), "songs.db")

#Checking if the songs table exists
tables <- dbListTables(con)

if("songs" %in% tables){

  #Creating reference to songs table
  songs_tbl <- tbl(con, "songs")
  
  #Constructing query to get songs where artist_id = 11 (Queen)
  queen_songs <- songs_tbl %>%
    filter(artist_id == 11) %>%
    select(title)
  
  #Displaying SQL query generated
  show_query(queen_songs)
  
  #Retrieving actual data as tibble
  result <- collect(queen_songs)
  print(result)

} else {
  print("Error: 'songs' table not found in the database.")
}

#Disconnecting from the database
dbDisconnect(con)
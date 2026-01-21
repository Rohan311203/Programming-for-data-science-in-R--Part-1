#function to get user input text and print it as it is
gettxt<-function(){
  text<-readline(prompt="Enteryouttext")
  return(text)
}
#test function
cat("theenteredtextishello\n")
cat("userinput:",gettxt(),"\n\n")
cat("theenteredtextisrohan\n")
cat("userinput:",gettxt(),"\n\n")
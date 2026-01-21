# Initial team performance data
teams <- list(
  "Team A" = c(90, 85, 88),
  "Team B" = c(78, 82, 79),
  "Team C" = c(88, 92, 90)
)

# Function to add new teams with scores
add_team <- function(team, scores) {
  teams[[team]] <<- scores
}

# Function to remove a team
remove_team <- function(team) {
  teams[[team]] <<- NULL
}

# Function to calculate average score per team
average_scores <- function() {
  sapply(teams, mean)
}

# Function to rank teams based on average score (descending)
rank_teams <- function() {
  avg <- average_scores()
  sort(avg, decreasing = TRUE)
}

# Example usage
add_team("Team D", c(95, 91, 94))
remove_team("Team B")

team_avg <- average_scores()
team_ranks <- rank_teams()

# Display results
cat("Average Scores per Team:\n")
print(team_avg)

cat("\nTeam Rankings (Highest to Lowest):\n")
print(team_ranks)

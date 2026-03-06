int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int scoreA = teamA['points'] ?? 0;
  int scoreB = teamB['points'] ?? 0;

  if (scoreA > scoreB) {
    return 1; // Team A wins
  } else if (scoreB > scoreA) {
    return -1; // Team B wins
  } else {
    return 0; // It's a tie
  }
}
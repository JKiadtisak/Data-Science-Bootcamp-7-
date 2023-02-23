AI_game <- function() {
  print ("Hi!,Welcome to Pao Ying Chub Game")
  print ("Have A Good Time")
  print ("Type : Hammer = H, Scrissors = S, Paper = P")
  print ("If you want to quit the game,place type 'E'to exit program")
  acts <- c("H", "S", "P")
  win <- 0
  loss <- 0
  tie <- 0
  
  while (TRUE) {
    
    cat ("You choose: ")
    player <- readLines("stdin" , 1)
    AI <- acts[sample(1:3, 1)]
    
    if (player == "E") {
      print ("Thank you for join with Me . Hope to see you again!")
      break
    }
    
    print(paste("AI choose:",  AI))
    
    if (player == AI) {
      tie <- tie + 1
      print ("Tie")
    } else if (player == "H" & AI == "P") {
      loss <- loss + 1
      print("You loss")
    } else if (player == "S" &  AI == "H") {
      loss <- loss + 1
      print("You loss")
    } else if (player == "P" &  AI == "S") {
      loss <- loss + 1
      print("You loss")
    } else {
      win <- win + 1
      print("You win, Let me try again.")
    }
    cat ("Player_choose:", player, "\n" )
    cat ("AI_choose:",  AI, "\n")
    cat (win,loss,tie)
  }
}
AI_game()

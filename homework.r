# My work shop in bootcamp
play_game <- function(){
  print("Hello everyone welcome to my RPS game")
  print("If you want to quit game you press Q")
  
  out <- c("hammer","scissor","paper")
  win <- 0
  lose <- 0
  draw <- 0
    while(TRUE){
      user = readline("please select hammer, scissor, paper for fight ? ")
        if(user == sample(out, 1)){
          print("Draw")
          draw <- draw+1

        } else if(user == "hammer" & sample(out, 1) == "scissor" |
                  user == "scissor" & sample(out, 1) == "paper" |
                  user == "paper" & sample(out, 1) == "hammer"){
          print("Win")
          win <- win+1

        } else if (user == "Q"){
          break
        } else {
          print("Lose")
          lose <- lose +1

        }
    }
  print(paste("The result in game win =", win, "Lose =", lose, "Draw =", draw))
}

play_game()

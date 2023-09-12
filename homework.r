# My work shop in bootcamp

# 1. RPS Game
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

# 2. Pizza Chatbot
chatbot <- function(){
  pizza <- c("seafood" ,"hawaiian","larb")
  pizza_price <- c(seafood = 300, hawaiian = 250, larb = 400)
  sizes <- c("S", "M", "L" )
  size_price <- c(S = 100, M = 150, L = 200)
  
    while(TRUE){
      order = readline("What do you want to get order? ")
      if(order %in% pizza){
        print("please choose the size are you want? ")
        break
      } else {
        print("please try again! ")
      }
    }
    
    while(TRUE){
      size = toupper(readline("What the size are you want? "))
      if(size %in% size){
        break
      } else {
        print("please try again! ")
      }
    }

  total_price <- pizza_price[order] + size_price[size]
  
  print(paste("payment amount = ", total_price))
  print("Thank you")
}


chatbot()

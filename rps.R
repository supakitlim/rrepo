rps <- function(){
  hands = c('rock','paper','scisscors')
  result <- ''
  score <- 0
  replay <- TRUE
  player_num <- 0
  com_num <- 0
  while(replay == TRUE){
    player_num <- as.numeric(readline(
      'input your hands [1 = rock , 2 = paper , 3 = scisscors] '))
    com_num <- sample(1:3 , 1)
    
    if(player_num == com_num){
      result <- 'Draw'
    } else if (player_num - com_num == 1 | player_num - com_num == -2){
      result <- '\n-----You Win-----'
      score <- score +1
    } else{
      result <- '\n-----You Lose-----'
      score  <- score -1 
    }
    
    cat('Your hand : ', hands[player_num] , '\nComputer hand : ', hands[com_num], '\n')
    token <- readline(cat(result , '\n\nYour score = ', score , '\n\nDo You want to play agian ? (Y/N)'))
    ifelse(token == 'Y' , replay <- TRUE , replay <- FALSE)
    
  }
  
  cat('*****Your total score : ', score, '*****')
}

rps()

a <- 3
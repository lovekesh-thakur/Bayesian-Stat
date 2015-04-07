# Monty Hall Problem
Play_MontyHall <- function(){
  doors <- c("A" , "B" , "C")
  door_with_prize <- sample(doors , 1)
  select_door <- readline("Select one of the doors : A, B or C ")
  index <- doors %in% c(door_with_prize , select_door)
  remaining_doors <- doors[!index]
  door_opened_by_host <- sample(remaining_doors , 1)
  final_door_still_closed <- remaining_doors[!(remaining_doors %in% door_opened_by_host)]
  if (length(final_door_still_closed) == 0)
  {
    final_door_still_closed <- setdiff(doors , c(select_door , remaining_doors))
    
  }
  
  ask_to_switch <- readline("Do you want to switch Yes/No ")
  if (ask_to_switch == "No")
    {
     if(select_door == door_with_prize)
      {
       print("CONGRATULATIONS!!!!, You just got lucky")
      }
     else
      {
       print("Better Luck next time Loser!")
      }
    }
  else
  {
    if(final_door_still_closed == door_with_prize)
    {
      print("CONGRATULATIONS!!!!, You just got lucky")
      
    }
    else
    {
      print("Better Luck next time Loser!")
    }
  }
  
  
  
  
}
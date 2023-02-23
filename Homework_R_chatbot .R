Thaitai_chatbot <- function(user_select){
  
  print("Welcome to Thaitai restaurant")
  print("What's you name : ")
  username = readLines("stdin", 1)
  print(paste("Hello", username))
  
  print("what would you like ?")
  print("Set A Fried rice with pork + Mango Sticky rice + orange juice 160 baht")
  print("Set B Pad Thai with fresh prawn + pie + lemon tea 150 baht ")
  print("set C Roasted duck over rice + Cendol   + lemonade 150 baht ")
  user_select = readLines("stdin", 1)
  
  
  if (user_select == "A") {
    print("Set A Fried rice with pork + Mango Sticky rice + orange juice 160 baht")
    print("How many sets do you want?")
    user_q = readLines("stdin", 1) 
    print("What is your delivery address?")
    user_address = readLines("stdin", 1) 
    print("You will get your package in 1 hour. Thank you, please come again")
    
    
  } else if (user_select == "B") {
    print("set B Rice crispy pork + Deletable Imitation Fruits  + thai tea 150 baht ")
    print("How many sets do you want?")
    user_q = readLines("stdin", 1) 
    print("What is your delivery address?")
    user_address = readLines("stdin", 1)
    print("You will get your package in 1 hour.  Thank you, please come again")
    
  }  else if (user_select == "C") {
    print("set C Roasted duck over rice + Cendol   + lemonade 150 baht ")
    print("How many sets do you want?")
    user_q = readLines("stdin", 1) 
    print("What is your delivery address?")
    user_address = readLines("stdin", 1)
    print("You will get your package in 1 hour.  Thank you, please come again")
  }
}

Thaitai_chatbot()

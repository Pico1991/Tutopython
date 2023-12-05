from random import *

price = randint(1, 1000)

Customersuggestion = 0

while Customersuggestion != price :
    Customersuggestion = int(input("What is your choice ?"))

    if Customersuggestion == price :
        print("Congratulation")
        break
    elif Customersuggestion > price :
        print("it's less !")
    elif Customersuggestion < price :
        print("it's more !")


print("End of the game")

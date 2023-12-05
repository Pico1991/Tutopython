print ("Bonjour")
age = int(input("How old are you ?"))
cost = 0

if age < 18 :
    cost += 7
    print ("You are young ! {} $".format(cost))

else :
    cost += 12
    print("You are Old ! {} $".format(cost))


if "Yes" == input("Do you want pop corn Yes/No?") :
    cost += 5

print("The addition is {} $".format(cost))
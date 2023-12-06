import os
from model.Generator import *
import random

nb_password = 10
nb_length = 10
password_list = []
password_list.clear()
while len(password_list) < 10 :
    password_tmp = strongpassword_generation(nb_length)
    password_list.append(password_tmp)

with open("password.txt","w+") as file :
    first_line = len(file.readline())

    for password in password_list:
        file.write(password + "\n")

    file.close()

with open("password.txt", "r+") as file:
    pass_chosen = random.choice(file.readlines())
    print(" le password choisi est :",pass_chosen)




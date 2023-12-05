from random import shuffle

#Generateur de phrase
chained_words = input("Entrer une chaine de caractère de la forme (mot1/mot2/mot3/mot4)")
words = chained_words.split("/")
shuffle(words)
print(words)
liste = len(words)

if liste < 10:
    print(words[:2])
else:s
    print(words[-3:])
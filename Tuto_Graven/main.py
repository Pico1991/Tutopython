import json


choix = 0

while choix < 1 or choix > 4:

    print("-----------------------------------------------------")
    print("- Bonjour -")
    print("- Voulez vous afficher les notes d'un éléve - Choix 1")
    print("- Voulez vous afficher les appreciations de la clase- choix 2")
    print("- Retirer un éleve - choix 3")
    print("- Ajouter un éleve - choix 4")
    print("-----------------------------------------------------")
    choix = int(input("Votre choix ?"))

    if choix < 1 or choix > 4:
        print("nop")


if choix == 1:
    with open('classe.json', 'r+') as jsonfile:
        eleves = json.load(jsonfile)
    jsonfile.close()
    i = 1
    relation_eleve_num = {}
    for eleve in eleves.keys():
        relation_eleve_num[i] = eleve
        print(f"{i}__{relation_eleve_num.get(i)} ")
        i += 1
    existence_eleve = 0

    while existence_eleve == 0:
        choix_eleve = int(input("Votre choix ?"))

        if choix_eleve in relation_eleve_num.keys():
            existence_eleve = 1
            eleve_choose = relation_eleve_num.get(choix_eleve, 99999)
            print("Choix validé")
            print(
                f" La moyenne de {eleve_choose} est de {eleves[eleve_choose]['Note']} avec comme remarque {eleves[eleve_choose]['RQ']}")
        else:
            print("Choix non validé")

elif choix == 3:
    with open('classe.json', 'r+') as jsonfile:
        eleves = json.load(jsonfile)
    jsonfile.close()
    i = 1
    relation_eleve_num = {}
    for eleve in eleves.keys():
        relation_eleve_num[i] = eleve
        print(f"{i}__{relation_eleve_num.get(i,999)} ")
        i += 1
    existence_eleve = 0

    while existence_eleve == 0:
        choix_eleve = int(input("Votre choix ?"))

        if choix_eleve in relation_eleve_num.keys():
            existence_eleve = 1
            eleve_choose = relation_eleve_num.get(choix_eleve)
            print("Choix validé")
            del eleves[eleve_choose]
            if not eleve_choose in eleves.keys():
                print(f"{eleve_choose} bien supprimé")
                with open('classe.json', 'w+') as jsonfile:
                    json.dump(eleves, jsonfile)
                jsonfile.close()

        else:
            print("Choix non validé")

elif choix == 4 :
    with open('classe.json', 'r+') as jsonfile:
        eleves = json.load(jsonfile)
    jsonfile.close()


    existence_eleve = 1
    while existence_eleve == 1:
        eleve_tmp = input("Le nom de l'eleve")
        if not eleve_tmp in eleves.keys():
            print("Nom inconnu")
            existence_eleve = 0
            eleves[eleve_tmp] = {
                'Note': input("La note ?"),
                'RQ' : input("Une remarque ?"),

            }
            with open('classe.json', 'w+') as jsonfile:
                json.dump(eleves, jsonfile)
            jsonfile.close()
        else :
            print("veuillez retenter car nom connu")
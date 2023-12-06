import  json


# eleves = {
#     'Paul' : {
#         'Note' : 12,
#         'RQ'   : "nul"
#         },
#     'gege' : {
#         'Note': 30,
#         'RQ': "nul"
#         },
#     'saroman': {
#         'Note': 100,
#         'RQ': "Bon"
#     }
# }

with open('classe.json','r+') as jsonfile :
     eleves = json.load(jsonfile)

eleves['ginette2'] = {
    'Note': 69,
    'RQ': "llll"
}

for eleve in eleves.keys() :
    print(f" La moyenne de {eleve} est de {eleves[eleve]['Note']} avec comme remarque {eleves[eleve]['RQ']}")

# print(f" La moyenne de {'PC'} est de {eleves['PC']['Note']} avec comme remarque {eleves['PC']['RQ']}")
# print(eleves.keys())
# del eleves['PC']
#
# print(eleves.keys())
#
with open('classe.json','w+') as jsonfile :
    json.dump(eleves,jsonfile)

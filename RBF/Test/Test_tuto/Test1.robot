*** Settings ***
Documentation   Test case pour expliquer
...             les settings de RBF
#Library     SeleniumLibrary


*** Variables ***
${MSG}=     Hello tout le monde
${MSG2}=     Hello tout le mondeBis
*** Keywords ***
Log hello world
    log     ${MSG}

Log hello worldBis
    log     ${MSG2}

*** Test Cases ***
Afficher un texte1
    [Tags]  1
    Log hello world

Afficher un texte2
    [Tags]  2
    Log hello worldBis

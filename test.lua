--[[Document déstiné aux personnes qui ont les bases de la programmation ,
J'aborde essentiellement la syntaxe du lua
 je ne fais pas retour sur ce qu'est une variable, boucle, etc Je donne simplement des exemples pour pouvoir aidé à coder (aide-mémoire)
 Rendez vous sur : https://www.lua.org/cgi-bin/demo pour pouvoir tester votre script.
 Vous pouvez modifier ce document si il y a des erreurs..
 Bon Courage
 ]]--


-- ceci est un commentaire

--[[
 Commentaires
 sur 
 plusieurs lignes
]]--

-- ce sont des variables
age = 25
nom = 'shinobize'
nombreVirgule = 15.53

-- affectation de a-->1 et b-->5
a , b = 1 , 5

-- exemple d'échange de valeur
a , b = b , a

-- exemple de chaine de caractère
chaineChar = "Je m'apelle jean banane"
chaineDeux = "Je suis\
maladeux!!!"

-- concatenation
totalVarchar= chaineChar.." ET "..chaineDeux

-- output en sortie affiche la valeur de la variable 25
 print(age)
 print(totalVarchar.." ET j'ai "..age.."ans")

-- Déclaration d'un tableau ou une liste qu'on appelle en lua une table comme en sql
liste = {
    nombre, 
    string,
    charListe,
    nombreVirgule2   
    }

-- affectations au tableau/liste
liste["nombre"] = 125
liste.string = "Je suis un string!"
liste.charListe = 'Je suis une chaine de char'
liste["nombreVirgule2"] = 3.65

-- on peut également affecter la valeur du tableau dans une variable
varListeString =  liste.string

-- pour acceder à une case de la liste    
print("Je suis une concaténation avec la valeur de l'index nombre de la table liste:"..liste.nombre)
print("La fleme je suis:  liste.string :p"..liste.string)
print("Je suis le resultat d'une concaténation d'une chaine de caractère et d'une valeur de tableau stocké dans une variable!! :"..varListeString)

--[[
NB que pour la déclaration d'une fonction dans une table il faut la mettre entre crochez'
]]--
tableFonction =
{
    [fonction1]= varfonction,
    [fonction2]= varfonction2,
    yahou
}

-- Comme tout langage on retrouve les valeurs boolean qui ne sont pas typé mais sont attribué de la sorte
variableVrai = true
variableFaux = false
--[[Tout ce qui n'es pas initialisé ou n'est pas affecté à false est égale à true soit une variable, un tableau string
sauf les nil et même 0 correspond à une valeur true
  ']]--

  -- POO Lié au C
  Objet.attribut.sousAttribut --sous attribut d'attribut
  Objet.methode() -- Méthode de l'objet
  Objet:methode2() -- Methode2 de l'objet
  --[[
      Copié/Collé:
      A vrai dire, pour que l'appel avec un seul point soit équivalent à celui
       avec les deux points, il faut passer en argument à Objet.methode()self ; 
       en effet, l'appel Objet:methode() donne implicitement en argument l'objet
        parent, désigné par le mot-clé self.
  ]]--

--[[
    NIL:
    Le nil (type) est une valeur vide
]]--


print("3+3= "..3+3) -- addition
print("3-1= "..3-1) -- soustraction
print("10/2= "..10/2) -- division
print("2X6= "..2*6) --multiplication
print("10 modulo 3= "..10%3) --modulo

print(3==1) -- 3 égale à 1?
print(3>1) -- 3 superieur à 1?
print(3<1) -- 3 inferieur à 1?
print(3>=1) -- 3 superieur ou égale à 1?
print(3<=1) -- 3 inferieur ou égale à 1
print(3~=1) -- 3 différent de 1?

varTrente = "chapeau chinois"
var45 ={ 15, 150, 160, "Archibald" }

print(#var45) --recupère le nombre de case 'la taille' du tableau
print(#varTrente) -- recupère la taille de la variable varTrente

--[[
    opérateurs logique:
    ou --> or
    et --> and
    non --> not
]]

---Conditions

----if/ifelse/else
if 3>1 then
    print("Oui 3 est bien supérieur à 1!!")
elseif 3==0 then
    print("Tu vis dans un monde bizarre!!")
else
    print("Euh autre chose ...")
end

---while
var=0
while var<=10 do ---- Tant que var est inférieur ou n'est pas égale à 10 reboucle
    print("Valeur de var: "..var)
    var=var+1
end

---repeat
var=0
repeat
    print("Valeur de var: "..var)
    var=var+1 -- on incrémente +1 à var pour pouvoir sortir de la boucle   
until var>=10 -- Jusqu'à ce que var soit supérieur ou égale à 10


--[[
    for <variable> [= <borne>, <borne>, <pas>] [in <iterateur>] do    -- Pour <variable> [qui prend les valeurs <borne> à <borne>, en allant de <pas> en <pas>] [dans <iterateur>] faire

    <instructions>

end
]]--
---for
multiple={'0','2','4','6','8','10'}
print(multiple[1])

for indice=1, #multiple do --on recupère la taille pour s'en servir (#) attention il faut mettre un indice qui correspond à une valeur qui existe si vous mettez zéro il se mettera en erreur
    print("Valeur de la case n°"..indice..": "..multiple[indice] )
end
---Dans cette boucle incrémentation se fait automatiquement vas de 1 à la taille de multiple(6)

----for pairs pour récuperer clé/valeur ipairs-->index/valeur 
tableau = { 3,7,10,17; banana="yellow", pi=3.14159 }
for k,v in pairs(tableau) do
    print(k,v)
end

----output fichier
io.output(io.open("my.txt","w"))---ouverture d'un fichier
io.write("Nous écrivons dans un fichier ouvert!")
io.close() --Nous fermons le fichier ouvert

---lecture d'un fichier
file = assert(io.open("myTxt","r"))
for line in file:lines() do 
    print(line) 
end
file:close()

--[[

     Quelles sont les différences avec io.lines()?

Vous devez explicitement ouvrir et fermez le ficheir. Un des avantage est que si le dossier ne peut pas être ouvert, vous pouvez gérer cet échec dans le code. Ici, assert a le même effet que io.lines: l'interprèteur LUA s'arrête avec un message d'erreur et pointe sur la ligne défectueuse ; mais vous pouvez tester sur la valeur nil de file et faire autre chose.

Un autre avantage est que vous pouvez commencer la boucle sur n'importe quelle ligne :

file = assert(io.open("list.txt", "r"))
local line = file:read()
if string.sub(line, 1, 1) ~= '#' then
ProcessLine(line) -- File doesn't start with a comment, process the first line
end
-- We could also loop on the first lines, while they are comment
-- Process the remainder of the file
for line in file:lines() do
ProcessLine(line)
end
file:close()  

Source:http://www.luteus.biz/Download/LoriotPro_Doc/LUA/LUA_Training_FR/LUA_BoucleFor.html
]]--

--fonction

function disbonjour(nom) --fonction sans retour
    print("Bonjour "..", Bienvenue parmis nous")
end
disbonjour(Shinobize)

function multiplie(nombre1,nombre2)
    return print(nombre1*nombre2) --fonction avec retour
end
multiplie(3,2)

function multipliefoisdeux(nombre1,nombre2)
    p1=nombre1*2
    p2=nombre2*2
    return p1,p2 --retour de plusieurs paramètres - on peut en mettre à l'infini
end
result1,result2 = multipliefoisdeux(1,2) -- On récupère dans l'ordre les retours de la fonction
print("Resultat 1:"..result1)
print("Reslutat 2:"..result2)


--[[
    Notes édités par Shinobize
    Source: openclassroom, luteuz.biz et le site officiel du Lua
    Mon github: https://github.com/shinobize 
]]--








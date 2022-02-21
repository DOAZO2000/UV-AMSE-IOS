import UIKit
import Darwin

var greeting = "Hello, playground"
var entier : Int
entier = 12
print(entier)
var caractA : Character
caractA = "a"
let pointEx : Character = "!"
var message = "Test"
message.append(pointEx)
var tableuDouble: [Double] = [1,3,4,5]

//valeur optionnelle

var doublePouvantNePasExister : Double?

doublePouvantNePasExister = nil

var valeur = doublePouvantNePasExister

var doublePouvantNePasExister2 : Double?
doublePouvantNePasExister2 = 3

var valeur2 = doublePouvantNePasExister2

var optionnel: Int! = nil

var valeur3 = optionnel

//Contrôle de condition

var contrôleTrue = true
var contrôleFalse = false

if contrôleTrue || contrôleFalse {
    //print("1 est vrai")
}

//retour sur les optionnelles

var testopt1: Int? = 3

let test: Int = testopt1!

if let test = testopt1 {
    print("\(test)")
}

// boucles

for i in 0..<10{
    print("\(i)")
}
print("la")
var j = 0
while j < 10 {
    print("\(j)")
    j+=1
}
print("ici")
var k = 1
repeat {
    print("\(k)")
    k+=1
}while k<10


//opération d'intervales

var tab = [1,2,3,4,5,6]
tab[1...3] = [7,8,9]
tab

var test1 = [1,2,3,4,5,6]
var test2 = [8,7,3,4,5,9]
test2 == test1
test2[2...4] == test2[2...4]

//Les "one side ranges"

var planètes = ["Mercure", "Venus", "Terre", "Mars", "Jupiter", "Saturne", "Uranus", "Neptune"]
let enDehorsCeintureAstéroîdes = planètes[4...]
let quatrePremières = planètes[..<4]

//tuples

let matièreAlgo: (nom:String, coeff:Int) = ("IAP", 3) //Décrit une matière et son coefficient
matièreAlgo.nom

//fonctions

func factoriel (n: Int!) -> Int{
    var res = 1
    for i in 1...n{
        res = res*i
    }
    return res
}

factoriel(n:4)
factoriel(n:3)

func tailleIntervalle(min: Int,max:Int){
    print("Début : \(min), Taille : \(max-min)")
}

tailleIntervalle(min: 2, max: 8)

let f15 = factoriel(n: 15)
print("\(f15)")

tailleIntervalle(min: 2,max: 10)

//fonctions à plusieurs paramètres

func minMax (tableau :[Int])-> (min: Int, max: Int)?{
    if tableau.isEmpty{return nil}
    var valMin = tableau[0]
    var valMax = tableau[0]
    for i in tableau[1..<tableau.count]{
        if i < valMin {
            valMin = i
        }
        else if i > valMax{
            valMax = i
        }
    }
    return (valMin, valMax)
        
}

if let bornes = minMax(tableau: [8,-6,2,109,3,71]){
    print("Le minimum est \(bornes.min) et le maximum est \(bornes.max)")
}

func concatener (chaine s1: String, avecLaChaine s2: String, etLeSeparateur sep: String)-> String{
    return s1 + sep + s2
}

concatener(chaine: "Hello", avecLaChaine: "World", etLeSeparateur: ",")

class Eleve {
    var nom: String
    var  prenom: String
    var notes: [Double]
    var moyenne: Double{
        get{
            var s = 0.0
            for i in 0..<notes.count{
                s+=notes[i]
            }
            return s/Double(notes.count)
        }
        set(newNote){
            print("Vous ne pouvez pas trafiquer la moyenne d'un étudiant !")
        }
    }
    
    func descriptionEleve(){
        print ("Nom : \(nom), Prénom \(prenom)")
    }
    
    class func nomClass()->String{
        return "Eleve"
    }
    
    init(nom : String, prenom:String){
        self.nom = nom
        self.prenom = prenom
        notes = [10]
    }
}


var e = Eleve(nom: "ABC", prenom: "DEF")
e.descriptionEleve()



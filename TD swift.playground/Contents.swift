import UIKit

var greeting = "Hello, playground"

func racinePolynômeDegré2 (a0: Double, a1:Double, a2:Double)->(X1: Double, X2: Double?)?{
    let delta: Double = a1*a1 - 4*a2*a0
    if delta>0 {
        print("Les racines sont réelles")
        let X1 = (a1*a1 - delta.squareRoot())/(2*a2)
        let X2 = (a1*a1 - delta.squareRoot())/(2*a2)
        return (X1, X2)
    }
    else if delta < 0{
        print("les racines ne sont pas réelles")
        return nil
    }
    else {
        return (a1*a1/2/a2, nil)
    }
}
racinePolynômeDegré2(a0: -1, a1: 0, a2: 3)


class complexe{
    var partieReelle: Double
    var partieImaginaire: Double
    
    func descriptionComplexe()->(partieReelle: Double, partieImaginaire: Double){
        
    }
    
    init(partieReelle: Double, parieImaginaire: Double){
        self.partieReelle = partieReelle
        self.partieImaginaire = partieImaginaire
    }
    
    func norme ()->(Double){
        var res: Double = partieReelle*partieReelle
        res += partieImaginaire*partieImaginaire
        return res.squareRoot()
    }
    
    func angle ()-> Double{
        
    }
}

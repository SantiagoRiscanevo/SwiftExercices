import UIKit

/*
 * Escribe un programa que sea capaz de generar contraseñas de forma aleatoria.
 * Podrás configurar generar contraseñas con los siguientes parámetros:
 * - Longitud: Entre 8 y 16.
 * - Con o sin letras mayúsculas.
 * - Con o sin números.
 * - Con o sin símbolos.
 * (Pudiendo combinar todos estos parámetros entre ellos)
 */

func password(option1:Int, capitalCase:Bool, numbers:Bool, specialCharacters:Bool) -> String{
    
    var newPassword = String()
    
    let letters:[Character] = ["a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "x", "y", "z"]
    let specialCharactersArray:[String] = ["!","@","#","$","%","^","&","*","(",")","?","+","=","-","_"]
    
    
    if capitalCase == true && numbers == true && specialCharacters == true{
        for _ in 0...option1 - 1{
            let randomNumberOption = Int.random(in: 1...4)
            let randomNumberLetter = Int.random(in: 0...letters.count-1)
            let randomNumberSpecialCharacter = Int.random(in: 0...specialCharactersArray.count-1)
            
            if randomNumberOption == 1{
                newPassword = "\(newPassword)\(letters[randomNumberLetter].uppercased())"
            }else if randomNumberOption == 2{
                newPassword = "\(newPassword)\(Int.random(in: 0...9))"
            }else if randomNumberOption == 3{
                newPassword = "\(newPassword)\(specialCharactersArray[randomNumberSpecialCharacter])"
            }else{
                newPassword = "\(newPassword)\(letters[randomNumberLetter])"
            }
        }
    }else if capitalCase == true && numbers == false && specialCharacters == true{
        for _ in 0...option1 - 1{
            let randomNumberOption = Int.random(in: 1...3)
            let randomNumberLetter = Int.random(in: 0...letters.count-1)
            let randomNumberSpecialCharacter = Int.random(in: 0...specialCharactersArray.count-1)
            
            if randomNumberOption == 1{
                newPassword = "\(newPassword)\(letters[randomNumberLetter].uppercased())"
            }else if randomNumberOption == 2{
                newPassword = "\(newPassword)\(specialCharactersArray[randomNumberSpecialCharacter])"
            }else{
                newPassword = "\(newPassword)\(letters[randomNumberLetter])"
            }
        }
    }else if capitalCase == true && numbers == false && specialCharacters == false{
        for _ in 0...option1 - 1{
            let randomNumberOption = Int.random(in: 1...2)
            let randomNumberLetter = Int.random(in: 0...letters.count-1)

            if randomNumberOption == 1{
                newPassword = "\(newPassword)\(letters[randomNumberLetter].uppercased())"
            }else{
                newPassword = "\(newPassword)\(letters[randomNumberLetter])"
            }
        }
    }else if capitalCase == false && numbers == true && specialCharacters == false{
        for _ in 0...option1 - 1{
            newPassword = "\(newPassword)\(Int.random(in: 0...9))"
        }
    }else if capitalCase == false && numbers == false && specialCharacters == true{
        for _ in 0...option1{
            let randomNumberSpecialCharacter = Int.random(in: 0...specialCharactersArray.count-1)
            
            newPassword = "\(newPassword)\(specialCharactersArray[randomNumberSpecialCharacter])"
        }
    }else{
        for _ in 0...option1 - 1{
            let randomNumberOption = Int.random(in: 1...2)
            let randomNumberSpecialCharacter = Int.random(in: 0...specialCharactersArray.count-1)
            
            if randomNumberOption == 1{
                newPassword = "\(newPassword)\(Int.random(in: 0...9))"
            }else{
                newPassword = "\(newPassword)\(specialCharactersArray[randomNumberSpecialCharacter])"
            }
        }
    }
    return newPassword
}

func main(){
    let myPassword = password(option1: 8, capitalCase: true, numbers: true, specialCharacters: true)
    print(myPassword)
}

main()




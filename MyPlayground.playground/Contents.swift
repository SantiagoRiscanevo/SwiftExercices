import PlaygroundSupport

/*
 * Escribe un programa que muestre cómo transcurre un juego de tenis y quién lo ha ganado.
 * El programa recibirá una secuencia formada por "P1" (Player 1) o "P2" (Player 2), según quien
 * gane cada punto del juego.
 *
 * - Las puntuaciones de un juego son "Love" (cero), 15, 30, 40, "Deuce" (empate), ventaja.
 * - Ante la secuencia [P1, P1, P2, P2, P1, P2, P1, P1], el programa mostraría lo siguiente:
 *   15 - Love
 *   30 - Love
 *   30 - 15
 *   30 - 30
 *   40 - 30
 *   Deuce
 *   Ventaja P1
 *   Ha ganado el P1
 * - Si quieres, puedes controlar errores en la entrada de datos.
 * - Consulta las reglas del juego si tienes dudas sobre el sistema de puntos.
 */
func showResult(resultOne:String, resultTwo:String){
    if resultOne != "Deuce" && resultOne != "Ventaja P1" && resultTwo != "Ventaja P2" {
        print("\(resultOne) - \(resultTwo)")
    }else{
        if resultOne == "Deuce" && resultTwo == "Deuce"{
            print(resultOne)
        } else if resultOne == "Ventaja P1"{
            print(resultOne)
        } else {
            print(resultTwo)
        }
    }
}

func match(secuence:[String]){
    var resultOne:String = "Love"
    var resultTwo:String = "Love"
    
    for i in secuence{
        
        if i == "P1"{
            if resultOne != "40" && resultOne != "Deuce" && resultOne != "Ventaja P1"{
                if resultOne == "15"{
                    resultOne = "30"
                } else if resultOne == "30" && resultTwo != "40"{
                    resultOne = "40"
                } else if resultOne == "30" && resultTwo == "40"{
                    resultOne = "Deuce"
                    resultTwo = "Deuce"
                }else{
                    resultOne = "15"
                }
            }else if resultTwo == "Ventaja P2"{
                resultOne = "Deuce"
                resultTwo = "Deuce"
            }else if resultOne == "Deuce"{
                resultOne = "Ventaja P1"
            } else if resultOne == "Ventaja P1"{
                resultOne = "Ha ganado el P1"
            }
        }else{
            if resultTwo != "40" && resultTwo != "Deuce" && resultTwo != "Ventaja P2"{
                if resultTwo == "15"{
                    resultTwo = "30"
                } else if resultTwo == "30" && resultOne != "40"{
                    resultOne = "40"
                } else if resultTwo == "30" && resultOne == "40"{
                    resultOne = "Deuce"
                    resultTwo = "Deuce"
                }else{
                    resultTwo = "15"
                }
            }else if resultOne == "Ventaja P1"{
                resultOne = "Deuce"
                resultTwo = "Deuce"
            }else if resultTwo == "Deuce"{
                resultTwo = "Ventaja P2"
            } else if resultTwo == "Ventaja P2"{
                resultTwo = "Ha ganado el P2"
            }
        }
        // manage Print
        showResult(resultOne: resultOne, resultTwo: resultTwo)
    }
}

func main(){
   match(secuence: ["P1", "P1", "P2", "P2", "P1", "P2", "P1", "P1"])
}

main()



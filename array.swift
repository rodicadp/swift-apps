import Foundation

func citeste()->[Float] //vector
{
  print ("a=")   //s=string o=optional f=float &=inseamna ca se modifica nr in functie
  let s_o_a = readLine()
  if let s_a = s_o_a{
    let f_o_a = Float(s_a)
    if let f_a = f_o_a{
          print ("b=")
          let s_o_b = readLine()
          if let s_b = s_o_b{
            let f_o_b = Float(s_b)
            if let f_b = f_o_b{
                    print ("c=")
                    let s_o_c = readLine()
                    if let s_c = s_o_c{
                      let f_o_c = Float(s_c)
                      if let f_c = f_o_c{
                        return [f_a, f_b, f_c]
                      }
                      else{
                        return [1, 2, 1]
                      }
                    }
                    else{
                      return [1, 2, 1]
          }
            }
            else{
              return [1, 2, 1]
            }
          }
          else{
            return [1, 2, 1]
  }
    }
    else{
      return [1, 2, 1]
    }
  }
  else{
    return [1, 2, 1]
  }
}

func calcul_radacini(_ coef: [Float], _ x1: inout [Float], _ x2: inout [Float])
{
    print("a = \(coef[0]) b = \(coef[1]) c = \(coef[2])")
    let delta = coef[1] * coef[1] - 4 * coef[0] * coef[2]
    if delta >= 0
    {
        x1.append ((-coef[1] - sqrt(delta)) / 2 * coef[0])
        x2.append ((-coef[1] + sqrt(delta)) / 2 * coef[0])
        x1.append (0)
        x2.append (0)
    }
    else
    {
        x1.append  (-coef[1] / (2 * coef[0]))
        x2.append (-coef[1] / (2 * coef[0]))
        x1.append (-sqrt(-delta) / ( 2 * coef[0]))
        x2.append (sqrt(-delta) / ( 2 * coef[0]))
    }
}

func tipateste(_ x1: [Float], _ x2: [Float])
{
  print("x1 = \(x1[0]) + \(x1[1]) i")
  print("x2 = \(x2[0]) + \(x2[1]) i")
}

func tipareste_vector(_ v: [Float])
{
  /* for i in v
  {
    print (i) //i primeste fiecare valoare din vectorul v
  } */
  /*
  var i = 0
  while(i < 3){
    print(v[i])
    i += 1
  } */
  var i = 0
  repeat{
    print(v[i])
    i += 1
  } while i < 3
}

var x1 = [Float]()
var x2 = [Float]()

var coef = citeste()
tipareste_vector(coef)
calcul_radacini(coef, &x1, &x2)
tipateste(x1, x2)

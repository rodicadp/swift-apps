import Foundation

func citeste(_ a: inout Float, _ b: inout Float, _ c: inout Float)
{
  print ("a=")   //s=string o=optional f=float
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
                        a = f_a
                        b = f_b
                        c = f_c
                      }
                      else{
                        print("Conversie esuata")
                      }
                    }
                    else{
                      print("Nu a citit nimic in a")
          }
            }
            else{
              print("Conversie esuata")
            }
          }
          else{
            print("Nu a citit nimic in b")
  }
    }
    else{
      print("Conversie esuata")
    }
  }
  else{
    print("Nu a citit nimic in a")
  }
}

func calcul_radacini(_ a: Float, _ b: Float, _ c: Float, _ x1_re: inout Float, _ x1_im: inout Float, _ x2_re: inout Float, _ x2_im: inout Float)
{
    print("a = \(a) b = \(b) c = \(c)")
    let delta = b * b - 4 * a * c
    if delta >= 0
    {
        x1_re = (-b - sqrt(delta)) / 2 * a
        x2_re = (-b + sqrt(delta)) / 2 * a
        x1_im = 0
        x2_im = 0
    }
    else
    {
        x1_re = -b / (2 * a)
        x2_re = -b / (2 * a)
        x1_im = -sqrt(-delta) / ( 2 * a)
        x2_im = sqrt(-delta) / ( 2 * a)
    }
}

func tipateste(_ x1_re: Float, _ x1_im: Float, _ x2_re: Float, _ x2_im: Float)
{
  print("x1 = \(x1_re) + \(x1_im) i")
  print("x2 = \(x2_re) + \(x2_im) i")
}

var a, b, c: Float
var x1_re, x1_im, x2_re, x2_im: Float

a = 1; b = 1; c = 1
x1_re = 0; x1_im = 0; x2_re = 0; x2_im = 0
citeste(&a, &b, &c)
calcul_radacini(a, b, c, &x1_re, &x1_im, &x2_re, &x2_im)
tipateste(x1_re, x1_im, x2_re, x2_im)

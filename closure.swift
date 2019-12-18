//lambda, closure, ananymous functions

func sorteaza(_ a: inout [Int], _ criteriu: (_ x: Int, _ y: Int)->Bool) //criteriu = parametru de tip functie
{
  //metoda bulelor
  var sortate = false
  repeat
  {
    var i = 0
    sortate = true
    while i < a.count - 1 
    {
      if criteriu(a[i], a[i + 1]){
        let tmp = a[i]
        a[i] = a[i + 1]
        a[i + 1] = tmp
        sortate = false
      }
      i += 1
    }
  }while !sortate
}

var a = [1, 2, -1]

//1. functie externa completa
/*func criteriu1(_ x: Int, _ y: Int)->Bool
{
  if x > y
  {
    return true
  }
  else
  {
    return false
  }
}
sorteaza(&a, criteriu1)
*/

//2. stocare functie in variabila
/*var criteriu1 = {
  (_ x: Int, _ y: Int)->Bool in
  if x > y
  {
    return true
  }
  else
  {
    return false
  }
}
sorteaza(&a, criteriu1)
*/

//3. cod in parameri
/*sorteaza(&a, 
{
  (_ x: Int, _ y: Int)->Bool in
  if x > y
  {
    return true
  }
  else
  {
    return false
  }
} )
*/

//4. trailing closure -> daca functia dorita e ultima din lista de parameri atunci pot sa o scot in-afara
//apel de functie
/*sorteaza(&a) 
{
  (_ x: Int, _ y: Int)->Bool in
  if x > y
  {
    return true
  }
  else
  {
    return false
  }
} */

//5. cod mai simplu
/*sorteaza(&a) 
{
  (_ x: Int, _ y: Int)->Bool in
   return x > y 
} */

//6. fara return
/*sorteaza(&a) 
{
  (_ x: Int, _ y: Int)->Bool in
   x > y ///daca e o singura instructiune in functie, putem sa nu mai folosim return, e implicit acolo... doar in swift5
} */

//7. fara tip
/*sorteaza(&a) 
{
  x, y in x > y //parametrii sunt declarati sus in functie...stim ce tip de date sunt x si y....in = cuvant cheie
}*/

//8. fara nume parametri
sorteaza(&a) 
{
  $0 > $1  //$0 accesam primul 1 - al doilea etc...
}


for i in a
{
  print(i)
}


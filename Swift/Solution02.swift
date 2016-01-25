/**
 * HR: 30 Days -- Day 02
 * -swinful
 **/

func printBill(mealCost: Double, tip: Int, tax: Int) {
  
  var totalMealCost = mealCost
  let tipAmount     = (mealCost * Double(tip)) / 100
  let taxAmount     = (mealCost * Double(tax)) / 100
  totalMealCost    += tipAmount
  totalMealCost    += taxAmount
  totalMealCost     = round(totalMealCost)
  
  print("The final price of the meal is $\(Int(totalMealCost)).")
}

let mealCost = Double(readLine()!)!
let mealTip  = Int(readLine()!)!
let mealTax  = Int(readLine()!)!

printBill(mealCost, tip: mealTip, tax: mealTax)


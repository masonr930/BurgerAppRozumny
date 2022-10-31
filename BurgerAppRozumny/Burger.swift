//
//  Burger.swift
//  BurgerAppRozumny
//
//  Created by MASON ROZUMNY on 10/9/22.
//

import Foundation
import CoreImage

enum CookedBurger {
case wellDone, medium, mediumRare
}


public class Burger
{
   
    
    var cheese: Bool
    var cheeseString = "cheese,"
    var lettuce: Bool
    var lettuceString = "lettuce,"
    var tomato: Bool
    var tomatoString = "tomatoes,"
    var ketchup: Bool
    var ketchupString = "ketchup,"
    var pickles: Bool
    var picklesString = "pickles,"
    var mayo: Bool
    var mayoString = "and mayo."
    
    
    init(cheese: Bool, lettuce: Bool, tomato: Bool, ketchup: Bool, pickles: Bool, mayo: Bool)
    {
        self.cheese = cheese
        self.lettuce = lettuce
        self.tomato = tomato
        self.ketchup = ketchup
        self.pickles = pickles
        self.mayo = mayo
        
    }
    
    func toString()-> String
    {
        if cheese == false
        {
            cheeseString = "no cheese,"
        }
        if lettuce == false
        {
            lettuceString = "no lettuce,"
        }
        if tomato == false
        {
            tomatoString = "no tomatoes,"
        }
        if ketchup == false
        {
            ketchupString = "no ketchup,"
        }
        if pickles == false
        {
            picklesString = "no pickles,"
        }
        if mayo == false
        {
            mayoString = "and no mayo."
        }
        
        return "\(cheeseString) \(lettuceString) \(tomatoString) \(ketchupString) \(picklesString) \(mayoString) \n"
        
    }
    
    
}

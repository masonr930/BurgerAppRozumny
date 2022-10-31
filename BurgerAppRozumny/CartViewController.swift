//
//  CartViewController.swift
//  BurgerAppRozumny
//
//  Created by MASON ROZUMNY on 10/9/22.
//

import UIKit

class CartViewController: UIViewController {

    var burgers: [Burger] = [Burger]()
    var cooked: CookedBurger!
    @IBOutlet weak var cartOutlet: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
            
        for x in burgers
        {
            if cooked == .wellDone
            {
                cartOutlet.text += "Your burger is well done with \(x.toString()) \n"
            }
            if cooked == .medium
            {
                cartOutlet.text += "Your burger is cooked medium with \(x.toString()) \n"
            }
            if cooked == .mediumRare
            {
                cartOutlet.text += "Your burger is cooked medium rare with \(x.toString()) \n"
            }
        }
    }
}

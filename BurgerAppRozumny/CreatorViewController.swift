//
//  CreatorViewController.swift
//  BurgerAppRozumny
//
//  Created by MASON ROZUMNY on 10/16/22.
//

import UIKit




class CreatorViewController: UIViewController {

    @IBOutlet weak var burgerLabel: UILabel!
    var cooked: CookedBurger!
    var burger: Burger!
    var burgers: [Burger] = [Burger]()
    var cookString = ""
    var x = -1
    var cheese = false
    var cS = "No"
    var lettuce = false
    var lS = "No"
    var tomato = false
    var tS = "No"
    var ketchup = false
    var kS = "No"
    var pickles = false
    var pS = "No"
    var mayo = false
    var mS = "No"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if cooked == .wellDone
        {
            cookString = "well done"
        }
        else if cooked == .medium
        {
            cookString = "medium cooked"
        }
        else
        {
            cookString = "medium rare"
        }
        
        burgerLabel.text = "Your \(cookString) burger will have: \nCheese : \(cS) \nLettuce: \(lS) \nTomatoes: \(tS) \nKetchup: \(kS) \nPickles: \(pS) \nMayo: \(mS)"
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl)
    {
        let select = sender.selectedSegmentIndex
        
        switch select {
        case 0:
            x = 0
        case 1:
            x = 1
        case 2:
            x = 2
        case 3:
            x = 3
        case 4:
            x = 4
        case 5:
            x = 5
        default:
            x = -1
        }
    }
    
    
    @IBAction func addToBurger(_ sender: UIButton)
    {
        if x == 0
        {
            cheese = !cheese
            if cheese == true
            {
                cS = "Yes"
            }
            else
            {
                cS = "No"
            }
        }
        else if x == 1
        {
            lettuce = !lettuce
            if lettuce == true
            {
                lS = "Yes"
            }
            else
            {
                lS = "No"
            }
        }
        else if x == 2
        {
            tomato = !tomato
            if tomato == true
            {
                tS = "Yes"
            }
            else
            {
                tS = "No"
            }
        }
        else if x == 3
        {
            ketchup = !ketchup
            if ketchup == true
            {
                kS = "Yes"
            }
            else
            {
                kS = "No"
            }
        }
        else if x == 4
        {
            pickles = !pickles
            if pickles == true
            {
                pS = "Yes"
            }
            else
            {
                pS = "No"
            }
        }
        else
        {
            mayo = !mayo
            if mayo == true
            {
                mS = "Yes"
            }
            else
            {
                mS = "No"
            }
        }
        
        burgerLabel.text = "Your \(cookString) burger will have: \nCheese : \(cS) \nLettuce: \(lS) \nTomatoes: \(tS) \nKetchup: \(kS) \nPickles: \(pS) \nMayo: \(mS)"
        
    }
    
    @IBAction func setBurger(_ sender: UIButton)
    {
        burger = Burger(cheese: cheese, lettuce: lettuce, tomato: tomato, ketchup: ketchup, pickles: pickles, mayo: mayo)
        burgers.append(burger)
        performSegue(withIdentifier: "creatorToCart", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "creatorToCart"
        {
            let nvc = segue.destination as! CartViewController
            nvc.burgers = burgers
            nvc.cooked = cooked
        }
    }
    
    

}

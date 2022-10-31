//
//  ViewController.swift
//  BurgerAppRozumny
//
//  Created by MASON ROZUMNY on 10/9/22.
//

import UIKit

class ViewController: UIViewController {

    
    var burgers: [Burger] = [Burger]()
    var whatBurger: CookedBurger!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func jamesSpecialButton(_ sender: UIButton)
    {
        if whatBurger == nil
        {
            //1 Create alert controller
            let alert = UIAlertController(title: "Error", message: "You didn't choose how the burger should be cooked!", preferredStyle: .alert)
            
            //2 create actions
            let okAction = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
            
            
            //3 Add actions
            alert.addAction(okAction)
            
            //4 Present alert controller
            present(alert, animated: true, completion: nil)
        }
        else
        {
            let burger = Burger(cheese: false, lettuce: false, tomato: false, ketchup: false, pickles: false, mayo: false)
            burgers.append(burger)
            performSegue(withIdentifier: "CartSegue", sender: self)
        }
    }
    
    @IBAction func maxSpecial(_ sender: UIButton)
    {
        if whatBurger == nil
        {
            //1 Create alert controller
            let alert = UIAlertController(title: "Error", message: "You didn't choose how the burger should be cooked!", preferredStyle: .alert)
            
            //2 create actions
            let okAction = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
            
            
            //3 Add actions
            alert.addAction(okAction)
            
            //4 Present alert controller
            present(alert, animated: true, completion: nil)
        }
        
        else
        {
            let burger = Burger(cheese: true, lettuce: true, tomato: true, ketchup: false, pickles: false, mayo: true)
            burgers.append(burger)
            performSegue(withIdentifier: "CartSegue", sender: self)
        }
    }
    
    @IBAction func heisenburgerButton(_ sender: UIButton)
    {
        if whatBurger == nil
        {
            //1 Create alert controller
            let alert = UIAlertController(title: "Error", message: "You didn't choose how the burger should be cooked!", preferredStyle: .alert)
            
            //2 create actions
            let okAction = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
            
            
            //3 Add actions
            alert.addAction(okAction)
            
            //4 Present alert controller
            present(alert, animated: true, completion: nil)
        }
        else
        {
            let burger = Burger(cheese: true, lettuce: true, tomato: false, ketchup: true, pickles: false, mayo: false)
            burgers.append(burger)
            performSegue(withIdentifier: "CartSegue", sender: self)
        }
        
    }
    
    @IBAction func createButton(_ sender: UIButton)
    {
        if whatBurger == nil
        {
            //1 Create alert controller
            let alert = UIAlertController(title: "Error", message: "You didn't choose how the burger should be cooked!", preferredStyle: .alert)
            
            //2 create actions
            let okAction = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
            
            
            //3 Add actions
            alert.addAction(okAction)
            
            //4 Present alert controller
            present(alert, animated: true, completion: nil)
        }
        else
        {
            performSegue(withIdentifier: "toCreator", sender: self)
        }
        
        
    }
    
    
    @IBAction func cartOutlet(_ sender: UIButton)
    {
        performSegue(withIdentifier: "CartSegue", sender: self)
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl)
    {
        let select = sender.selectedSegmentIndex
        
        switch select {
        case 0:
            whatBurger = .wellDone
        case 1:
            whatBurger = .medium
        case 2:
            whatBurger = .mediumRare
        default:
            whatBurger = .wellDone
        }
    }
    
        
        
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
       if whatBurger != nil
       {
           if segue.identifier == "CartSegue"
           {
               let nvc = segue.destination as! CartViewController
               nvc.burgers = burgers
               nvc.cooked = whatBurger
               
           }
           else if segue.identifier == "toCreator"
           {
               let nvc = segue.destination as! CreatorViewController
               nvc.cooked = whatBurger
               nvc.burgers = burgers
           }

       }
        
        
    }
}


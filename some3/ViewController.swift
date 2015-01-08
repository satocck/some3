//
//  ViewController.swift
//  some3
//
//  Created by julian cabuya on 1/8/15.
//  Copyright (c) 2015 julian cabuya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
  
}

    protocol PizzaOrderingsequence{
        func set_size(size:Sizes)
        func set_toppings(toppings:Array<Toppings>)
        func set_address(String)
        func get_time_till_delivered() -> Int
        
    }

enum Sizes: Int {
    case Small = 0
    case Medium = 1
    case large = 2
}
enum Toppings: String {
    case Pepperoni = "pepperoni"
    case Mushrooms = "mushrooms"
    case peppers = "peppers"
}
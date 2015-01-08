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
        
        var pizzass = PizzaPlace()
        
        pizzass.orderPizza(Sizes.large, toppings: [Toppings.Pepperoni], destination: "402 south wallaby city")
        pizzass.orderPizza(Sizes.Medium, toppings: [Toppings.Pepperoni], destination: "402 south wallaby city")
        pizzass.orderPizza(Sizes.Small, toppings: [Toppings.Pepperoni], destination: "402 south wallaby city")
       
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

class PizzaPlace:PizzaOrderingsequence{
    func orderPizza(size:Sizes,toppings:Array<Toppings>,destination:String){
        set_toppings(toppings)
        set_size(size)
        set_address(destination)
        println("its gonna take \(get_time_till_delivered()) min")
    }
    
    
    var pizzas:Array<Pizza> = []
    
    var pizza:Pizza = Pizza()
    
    func set_size(size: Sizes) {
        pizza.size = size
    }
    func set_toppings(toppings: Array<Toppings>) {
        pizza.toppings = toppings
    }
    func set_address(_: String) {
        pizza.destination = String()
    }
    func get_time_till_delivered() -> Int {
        
        pizzas.append(pizza)
        
        return pizzas.count*15
    }
    
    
}

class Pizza{
    var size:Sizes?
    var toppings:Array<Toppings>?
    var destination:String?
}
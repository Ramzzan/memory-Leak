//
//  ViewController.swift
//  memory-Leak
//
//  Created by Waleed on 17/07/2022.
//

import UIKit

class ViewController: UIViewController {
  
    var animal: Parent?
    var cat: Child?

    override func viewDidLoad() {
        super.viewDidLoad()
 
        cat = Child()
        animal = Parent()

        cat?.parent = animal
        animal?.child = cat

        cat = nil
        animal = nil
   
        
        //MARK: output
        
        //Parent denit called
        //Child deinit called
    }

    
}


class Child {
    var parent: Parent?

    deinit {
        print("Child deinit called")
    }
}

class Parent {
    var child: Child?

    deinit {
        print("Parent denit called")
    }
}

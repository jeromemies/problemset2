//
//  ViewController.swift
//  pset-2
//
//  Created by Jerome Mies on 23/02/17.
//  Copyright © 2017 Jerome Mies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataInputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondViewController = segue.destination as! SecondViewController
        
        // Closure
        secondViewController.data = dataInputField.text!.characters.split{ $0 == " " || $0 == "," }.map(String.init)
        
    }
    
}


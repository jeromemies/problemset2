//
//  ViewController.swift
//  pset-2
//
//  Created by Jerome Mies on 23/02/17.
//  Copyright © 2017 Jerome Mies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var placeholderLabel: UILabel!
    @IBOutlet weak var dataInputField: UITextField!

    let story = Story(stream: "I wannabe a <job> when I grow up. Just like my dad. Life is <adjective> like that!")

    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            let labels = story.getNextPlaceholder()
            placeholderLabel.text = ("Fill in a " + labels)
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        story.fillInPlaceholder(word: "job")
        
        print(story.getPlaceholderRemainingCount())
        
        let secondViewController = segue.destination as! SecondViewController
        
        
        
        // Closure
        secondViewController.data = story.toString()
        
        
    }
    
}


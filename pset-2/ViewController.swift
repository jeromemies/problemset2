//
//  ViewController.swift
//  pset-2
//
//  Created by Jerome Mies on 23/02/17.
//  Copyright © 2017 Jerome Mies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var inputData: String?
    
    @IBOutlet weak var placeholderLabel: UILabel!
    @IBOutlet weak var dataInputField: UITextField!

    //let story = Story(stream: "I wannabe a <job> when I grow up. Just like my dad. Life is <adjective> like that!")
    
    let story = Story(stream: "One of the most <adjective> characters in fiction is named 'Tarzan of the <plural-noun> .' Tarzan was raised by a/an <noun> and lives in the <adjective> jungle in the heart of darkest <place> . He spends most of his time eating <plural-noun> and swinging from tree to <noun> . Whenever he gets angry, he beats on his chest and says, ' <funny-noise> !' This is his war cry. Tarzan always dresses in <adjective> shorts made from the skin of a/an <noun> and his best friend is a/an <adjective> chimpanzee named Cheetah. He is supposed to be able to speak to elephants and <plural-noun> . In the movies, Tarzan is played by <person's-name> .")
    
    
    @IBAction func nextWord(_ sender: Any) {
        story.fillInPlaceholder(word:dataInputField.text!)
        let labels = story.getNextPlaceholder()
        let remaining = story.getPlaceholderRemainingCount()
        if remaining > 0 {
        placeholderLabel.text = ("Fill in a(n) " + labels + ". " + String(remaining) + " word(s) to go")
            dataInputField.text = ""
        } else {
            placeholderLabel.text = ("You are done. Finish by clicking Done.")
            dataInputField.text = ""
            
        }
    }
    @IBAction func next(_ sender: UIButton) {
        
            }
    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            let labels = story.getNextPlaceholder()
            placeholderLabel.text = ("Fill in a " + labels)
            print(story.getPlaceholderRemainingCount())
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //story.fillInPlaceholder(word: "job")
        
        print(story.getPlaceholderRemainingCount())
        
        let secondViewController = segue.destination as! SecondViewController
        
        
        
        // Closure
        secondViewController.data = story.toString()
        
        
    }
    
}


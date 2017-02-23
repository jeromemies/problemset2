//
//  FirstViewController.swift
//  pset-2
//
//  Created by Jerome Mies on 23/02/17.
//  Copyright © 2017 Jerome Mies. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func start(_ sender: UIButton) {
     
    }
    @IBOutlet weak var MadLibs: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ViewController
        viewController.inputData = ("One of the most <adjective> characters in fiction is named 'Tarzan of the <plural-noun> .' Tarzan was raised by a/an <noun> and lives in the <adjective> jungle in the heart of darkest <place> . He spends most of his time eating <plural-noun> and swinging from tree to <noun> . Whenever he gets angry, he beats on his chest and says, ' <funny-noise> !' This is his war cry. Tarzan always dresses in <adjective> shorts made from the skin of a/an <noun> and his best friend is a/an <adjective> chimpanzee named Cheetah. He is supposed to be able to speak to elephants and <plural-noun> . In the movies, Tarzan is played by <person's-name> .")
        
        
        
        
    }
    
}

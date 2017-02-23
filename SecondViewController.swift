//
//  SecondViewController.swift
//  pset-2
//
//  Created by Jerome Mies on 23/02/17.
//  Copyright © 2017 Jerome Mies. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var data: Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (data != nil){
           
            
            Story.init(stream: "I wannabe a <job> when I grow up. Just like my dad. Life is <adjective> like that!")
            
            
    }
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

}

extension SecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (data != nil){
            return data!.count
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        if let labels = data {
            cell.textField.text = labels[indexPath.row]
        } else {
            
        }
        return cell
        
        
    }
    
}

extension SecondViewController: UITableViewDelegate{
    
}


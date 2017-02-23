//
//  CustomCell.swift
//  pset-2
//
//  Created by Jerome Mies on 23/02/17.
//  Copyright © 2017 Jerome Mies. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {


    @IBOutlet weak var textField: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

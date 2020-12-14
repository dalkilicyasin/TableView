//
//  CustomTableViewCell.swift
//  ExampleMVVM(test)
//
//  Created by Yasin Dalkilic on 10.12.2020.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var currencyLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

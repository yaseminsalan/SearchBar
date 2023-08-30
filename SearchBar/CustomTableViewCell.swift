//
//  CustomTableViewCell.swift
//  SearchBar
//
//  Created by Yasemin salan on 30.08.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var contentview: UIView!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

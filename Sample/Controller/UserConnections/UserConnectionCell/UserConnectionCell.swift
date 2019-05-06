//
//  UserConnectionCell.swift
//  Sample
//
//  Created by Vijith T.V on 05/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import UIKit

class UserConnectionCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var connectionsLabel: UILabel!
    @IBOutlet weak var userActionButtons: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

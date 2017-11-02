//
//  HalloweenTableViewCell.swift
//  AC-iOS-HalloweenTableViewCells
//
//  Created by C4Q on 10/31/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class HalloweenTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageName: UILabel!
    @IBOutlet weak var ImageTags: UILabel!
    @IBOutlet weak var Picture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

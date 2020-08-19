//
//  CustomTableViewCell.swift
//  StoryTodoList
//
//  Created by Don Miller on 8/18/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTaskName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

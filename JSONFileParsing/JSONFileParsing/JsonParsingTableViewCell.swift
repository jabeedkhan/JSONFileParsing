//
//  JsonParsingTableViewCell.swift
//  JSONFileParsing
//
//  Created by jabeed on 02/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class JsonParsingTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var details: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

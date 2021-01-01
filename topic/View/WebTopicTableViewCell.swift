//
//  WebTopicTableViewCell.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class WebTopicTableViewCell: UITableViewCell {
    

    @IBOutlet var contentsImageView: UIImageView!
    
   override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        contentsImageView.clipsToBounds = true
        contentsImageView.layer.cornerRadius = 12.0
        // Configure the view for the selected state
    }
    
}

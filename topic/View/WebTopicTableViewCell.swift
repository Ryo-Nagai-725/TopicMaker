//
//  WebTopicTableViewCell.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class WebTopicTableViewCell: UITableViewCell {
    
    @IBOutlet var View: UIView!
    @IBOutlet var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        View.layer.cornerRadius = 20.0
        // Configure the view for the selected state
    }
    
}

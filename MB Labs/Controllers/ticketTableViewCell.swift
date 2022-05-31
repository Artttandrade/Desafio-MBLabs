//
//  ticketTableViewCell.swift
//  MB Labs
//
//  Created by Convidados on 30/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class ticketTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ticketCellView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var localLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    func configure(title: String, local: String, time: String){
        titleLabel.text = title;
        localLabel.text! += local;
        timeLabel.text! += time;
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

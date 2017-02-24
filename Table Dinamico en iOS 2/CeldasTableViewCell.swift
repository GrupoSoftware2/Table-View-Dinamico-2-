//
//  CeldasTableViewCell.swift
//  Table Dinamico en iOS 2
//
//  Created by alumno on 23/02/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class CeldasTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblcolor: UIView!
    @IBOutlet weak var lbldescripcion: UILabel!
    @IBOutlet weak var lblnumero: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

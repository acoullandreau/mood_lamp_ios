//
//  ModeCell.swift
//  Maia
//
//  Created by Alexina Coullandreau on 13/04/2021.
//

import UIKit

class ModeCell: UICollectionViewCell {

    @IBOutlet weak var modeName: UILabel!
    @IBOutlet weak var modeThumbnail: UIView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBAction func onEditClick(_ sender: UIButton) {
    }
    
    
    @IBAction func onDeleteClick(_ sender: UIButton) {
    }
    
    
}

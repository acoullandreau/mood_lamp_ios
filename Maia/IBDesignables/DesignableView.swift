//
//  DesignableView.swift
//  Maia
//
//  Created by Alexina Coullandreau on 26/03/2021.
//

import UIKit

@IBDesignable class DesignableView: UIView {

    @IBInspectable var cornerRadius:CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

}

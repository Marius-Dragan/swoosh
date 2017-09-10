//
//  BorderButton.swift
//  swoosh
//
//  Created by Marius Dragan on 10/09/2017.
//  Copyright © 2017 Marius Dragan. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}


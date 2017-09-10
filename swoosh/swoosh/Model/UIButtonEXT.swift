//
//  UIButtonEXT.swift
//  swoosh
//
//  Created by Marius Dragan on 10/09/2017.
//  Copyright © 2017 Marius Dragan. All rights reserved.
//

import UIKit
///Create a separate swift UIButtonExt file and replace foundation with UIKit and cut the below code snippet and paste it into the new swift file
//This require an IBOutlet and IBAction from the buttons where the below function will be called to do the animation will need the outletVarableName.wiggle() example -> nextBtn.wiggle()
extension UIButton {
    func wiggle() {
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnim.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position")
    }
    //Create a separate swift UIButtonExt file and replace foundation with UIKit and cut the below code snippet and paste it into the new swift file
    //This require an IBOutlet and IBAction from the buttons where the below function will be called to do the animation will need the outletVarableName.dim() example -> nextBtn.dim()
        func dim() {
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 0.75
            }) { (finished) in
                UIView.animate(withDuration: 0.15, animations: {
                    self.alpha = 1.0
                })
            }
        }
    }



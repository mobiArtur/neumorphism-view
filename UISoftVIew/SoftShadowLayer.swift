//
//  SoftShadowLayer.swift
//
//  Created by Artur on 21/06/2020.
//

import UIKit

class SoftShadowLayer: SoftLayer {
    
    override func addSoftUIShadowEffect(_ conifg: SoftEffect = .standard) {
        backgroundColor = conifg.themeColor.cgColor
        
        shadowColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1.0).cgColor
        shadowOffset = conifg.themeShadow.reversedOffset
        shadowOpacity = conifg.themeShadow.lowerRadius
        shadowRadius = CGFloat(conifg.themeShadow.uperRadius)
        
        cornerRadius = conifg.cornerRadius
    }
}

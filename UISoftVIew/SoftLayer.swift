//
//  SoftLayer.swift
//
//  Created by Artur on 21/06/2020.
//

import UIKit

class SoftLayer: CAShapeLayer {
    
    override init() {
        super.init()
        addSoftUIShadowEffect()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSoftUIShadowEffect()
    }
    
    // If not implemented fatalError will be throw on presentation layer
    // This can be when working with View Hierarchy Debugger or CABasicAnimation
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    func addSoftUIShadowEffect(_ conifg: SoftEffect = .standard) {
        
        self.cornerRadius = conifg.cornerRadius
        self.masksToBounds = false
        
        self.shadowRadius = CGFloat(conifg.themeShadow.uperRadius)
        self.shadowOpacity = conifg.themeShadow.lowerRadius
        self.shadowOffset = conifg.themeShadow.offset
        self.shadowColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1.0).cgColor
        
        let shadowLayer = SoftShadowLayer()
        self.insertSublayer(shadowLayer, at: 0)
    }
    
}

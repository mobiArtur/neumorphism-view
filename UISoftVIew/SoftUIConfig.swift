//
//  SoftUIConfig.swift
//
//  Created by Artur on 21/06/2020.
//

import UIKit

struct SoftThemeShadow {
    let offset: CGSize
    let uperRadius: Float
    let lowerRadius: Float
    
    var reversedOffset: CGSize {
        return CGSize(width: -offset.width, height: -offset.height)
    }
    
}

extension SoftThemeShadow {
    static let standard = SoftThemeShadow(offset: CGSize(width: 0, height: 3),
                                          uperRadius: 3.0,
                                          lowerRadius: 0.3)
}

struct SoftEffect {
    let cornerRadius: CGFloat
    let themeColor: UIColor
    let themeShadow: SoftThemeShadow
}

extension SoftEffect {
    static let standard = SoftEffect(cornerRadius: 8.0, themeColor: UIColor.white, themeShadow: SoftThemeShadow.standard)
}

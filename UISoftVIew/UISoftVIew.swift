//
//  UISoftVIew.swift
//
//  Created by Artur on 21/06/2020.
//

import UIKit

class UISoftVIew: UIView {
    
    override class var layerClass: AnyClass {
        return SoftLayer.self
    }
    
    override func layoutSublayers(of layer: CALayer) {
        layer.sublayers?.forEach {
            $0.frame = layer.bounds
        }
    }
    
}

//
//  CustomSCNNode.swift
//  3D Basics
//
//  Created by Jason Crawford on 7/8/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class CustomSCNNode:SCNNode {
    
    var positionToSlideFrom = SCNVector3Zero
    
    convenience init(geometry: SCNGeometry, initialPosition: SCNVector3) {
        self.init()
        
        self.geometry = geometry
        self.position = initialPosition
        self.positionToSlideFrom = initialPosition
    }
}

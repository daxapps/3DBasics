//
//  GeometryNodes.swift
//  3D Basics
//
//  Created by Jason Crawford on 7/8/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GeometryNodes {
    
    let cube = CustomSCNNode(geometry: SCNBox(width: 0.5, height: 0.5, length: 0.5, chamferRadius: 0), initialPosition: SCNVector3(0,0.5,0))
    
    let sphere = CustomSCNNode(geometry: SCNSphere(radius: 0.25), initialPosition: SCNVector3(-2,0.5,0))
    
    let pyramid = CustomSCNNode(geometry: SCNPyramid(width: 0.5, height: 0.5, length: 0.5), initialPosition: SCNVector3(2,0.25,0))
    
    let defaultMaterial = SCNMaterial()
    
    init() {
        
        defaultMaterial.diffuse.contents = UIColor.whiteColor()
        defaultMaterial.specular.contents = UIColor.blackColor()
        defaultMaterial.emission.contents = UIColor.grayColor()
        
        cube.geometry!.firstMaterial = defaultMaterial
        sphere.geometry!.firstMaterial = defaultMaterial
        pyramid.geometry!.firstMaterial = defaultMaterial
        
        
    }
    
    func addNodesTo(parentNode: SCNNode) {
        
        parentNode.addChildNode(cube)
        parentNode.addChildNode(sphere)
        parentNode.addChildNode(pyramid)
        
    }
    
}











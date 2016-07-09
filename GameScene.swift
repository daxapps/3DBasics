//
//  GameScene.swift
//  3D Basics
//
//  Created by Jason Crawford on 7/8/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameScene: SCNScene {
    
    var geometryNodes = GeometryNodes()
    
    convenience init(create: Bool) {
        self.init()
        
        geometryNodes.addNodesTo(rootNode)
        
        let floor = SCNFloor()
        floor.firstMaterial!.diffuse.contents = UIColor.whiteColor()
        floor.firstMaterial!.specular.contents = UIColor.whiteColor()
        floor.firstMaterial!.reflective.contents = UIColor.blackColor()
        
        let floorNode = SCNNode(geometry: floor)
        rootNode.addChildNode(floorNode)
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        //cameraNode.camera!.usesOrthographicProjection = true
        cameraNode.position = SCNVector3(0, 1, 2)
        cameraNode.rotation = SCNVector4(1,0,0, Float(-M_PI / 16.0))
        
        rootNode.addChildNode(cameraNode)
        
        let lightNodeSpot = SCNNode()
        lightNodeSpot.light = SCNLight()
        lightNodeSpot.light!.type = SCNLightTypeSpot
        lightNodeSpot.light!.attenuationStartDistance = 0
        lightNodeSpot.light!.attenuationFalloffExponent = 2
        lightNodeSpot.light!.attenuationEndDistance = 30
        lightNodeSpot.position = SCNVector3(0,3,2)
        
        rootNode.addChildNode(lightNodeSpot)
        
        let emptyTarget = SCNNode()
        emptyTarget.position = SCNVector3(0,0,0)
        
        lightNodeSpot.constraints = [SCNLookAtConstraint(target: emptyTarget)]
        
        
    }

}
















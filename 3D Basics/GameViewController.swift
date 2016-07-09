//
//  GameViewController.swift
//  3D Basics
//
//  Created by Jason Crawford on 7/8/16.
//  Copyright (c) 2016 Dax Apps. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var sceneView: SCNView?
    var scene = GameScene(create: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView = self.view as? SCNView
        
        if let view = sceneView {
            
            view.scene = scene
            view.showsStatistics = true
            view.backgroundColor = UIColor.blackColor()
            view.antialiasingMode = SCNAntialiasingMode.Multisampling4X
            
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(GameViewController.handlePan(_:)))
            view.addGestureRecognizer(panGesture)
            
        }
        
    }
        
    func handlePan(gesture: UIPanGestureRecognizer) {
        
        let translation = gesture.translationInView(sceneView!).x
        
        print(translation)
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

}

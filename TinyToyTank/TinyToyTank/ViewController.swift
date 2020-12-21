//
//  ViewController.swift
//  TinyToyTank
//
//  Created by 辛泽西 on 2020/12/21.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    //Data:
    var tankAnchor: TinyToyTank._TinyToyTank?
    var isActionPlaying: Bool = false

    @IBOutlet weak var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        
        arView.scene.anchors.append(tankAnchor!)
        
        tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        
        tankAnchor!.actions.actionComplete.onAction = {
            _ in self.isActionPlaying = false
        }
    }
    
    @IBAction func TankRightPressed(_ sender: UIButton) {
        //tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        if self.isActionPlaying {return}
        else {self.isActionPlaying = true}
        tankAnchor!.notifications.tankRight.post()
    }
    @IBAction func TankLeftPressed(_ sender: UIButton) {
        //tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        if self.isActionPlaying {return}
        else {self.isActionPlaying = true}
        tankAnchor!.notifications.tankLeft.post()
    }
    @IBAction func TankForwardPressed(_ sender: UIButton) {
        //tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        if self.isActionPlaying {return}
        else {self.isActionPlaying = true}
        tankAnchor!.notifications.tankForward.post()
    }
    @IBAction func TurretRight(_ sender: UIButton) {
        if self.isActionPlaying {return}
        else {self.isActionPlaying = true}
        tankAnchor!.notifications.turretRight.post()
    }
    @IBAction func CannonFirePressed(_ sender: UIButton) {
        if self.isActionPlaying {return}
        else {self.isActionPlaying = true}
        tankAnchor!.notifications.cannonFire.post()
    }
    @IBAction func TurretLeftPressed(_ sender: UIButton) {
        if self.isActionPlaying {return}
        else {self.isActionPlaying = true}
        tankAnchor!.notifications.turretLeft.post()
    }
}

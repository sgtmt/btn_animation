//
//  ViewController.swift
//  btn_animation
//
//  Created by 長沢　遼 on 2016/07/02.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit
import SpriteKit
class ViewController: UIViewController {

    @IBOutlet weak var particle_sk: SKView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
//    override func viewWillAppear(animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(false, animated: true)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        particleShow()
        
    }
    func particleShow(){
        let scene = sprite(size: particle_sk.frame.size)
        particle_sk.ignoresSiblingOrder = true
        scene.scaleMode = .AspectFill
        particle_sk.presentScene(scene)
    }
    @IBAction func tap(sender: UITapGestureRecognizer) {
        print("tap")
    }

}


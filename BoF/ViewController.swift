//
//  ViewController.swift
//  BoF
//
//  Created by Lasse Bonner on 17/02/2017.
//  Copyright © 2017 Lasse Bonner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gamename: String!
    
    
    
    @IBOutlet var FrontView: UIView!
    @IBOutlet var CreatePopUp: UIView!
    @IBOutlet var JoinPopUp: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CreatePopUp.isHidden = true
        JoinPopUp.isHidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func JoinPopUp(_ sender: UIButton) {
        FrontView.alpha = 0.3
        FrontView.backgroundColor = UIColor.lightGray
        JoinPopUp.isHidden = false
    }
    
    
    @IBAction func CreatePopUp(_ sender: UIButton) {
        //FrontView.alpha = 0.3
        FrontView.isUserInteractionEnabled = false
        FrontView.backgroundColor = UIColor.lightGray
        CreatePopUp.isHidden = false
    }

    
    
    @IBAction func CloseCreatePop(_ sender: UIButton) {
        
        CreatePopUp.isHidden = true
        FrontView.backgroundColor = UIColor.white
        
        /*
         MainPopUp.alpha = 0
         FrontView.alpha = 1
         */
        
        
        
        //self.removeFromParentViewController()
        //super.addChildViewController(self)
        
        //Add and remove it
    }
    
    
    
}


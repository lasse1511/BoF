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
    
    @IBOutlet var MainView: UIView!
    @IBOutlet var MainPopUp: UIView!
    @IBOutlet var JoinPopup: UIView!
    
    @IBOutlet var FrontView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MainPopUp.isHidden = true
        JoinPopup.isHidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Click(_ sender: UIButton) {
        FrontView.alpha = 0.3
        JoinPopup.isHidden = false
    }


    @IBAction func CreateClick(_ sender: UIButton) {
        FrontView.alpha = 0.3
        MainPopUp.isHidden = false
    }
}


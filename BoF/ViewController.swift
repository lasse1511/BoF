//
//  ViewController.swift
//  BoF
//
//  Created by Lasse Bonner on 17/02/2017.
//  Copyright © 2017 Lasse Bonner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let string = gameDTO.gameName
    
    @IBOutlet var FrontView: UIView!
    @IBOutlet var CreatePopUp: UIView!
    @IBOutlet var JoinPopUp: UIView!
    
    @IBOutlet var CreateBTN: UIButton!
    @IBOutlet var JoinBTN: UIButton!
    
    @IBOutlet var CreateName: UITextField!
    @IBOutlet var JoinName: UITextField!
    
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
        CreateBTN.isEnabled = false
        JoinBTN.isEnabled = false
        FrontView.backgroundColor = UIColor.lightGray
        JoinPopUp.isHidden = false
    }
    
    
    @IBAction func CreatePopUp(_ sender: UIButton) {
        //FrontView.alpha = 0.3
        CreateBTN.isEnabled = false
        JoinBTN.isEnabled = false
        FrontView.backgroundColor = UIColor.lightGray
        CreatePopUp.isHidden = false
    }
    
    @IBAction func CloseCreatePop(_ sender: UIButton) {
        
        CreatePopUp.isHidden = true
        FrontView.backgroundColor = UIColor.white
        CreateBTN.isEnabled = true
        JoinBTN.isEnabled = true
    }
    
    @IBAction func Submit(_ sender: UIButton) {
        if  (CreatePopUp.isHidden == false)
        {
            gameDTO.gameName = CreateName.text!
        }
        else if (JoinPopUp.isHidden == false)
        {
            gameDTO.gameName = JoinName.text!
            gameDTO.isCreator = true
        }
    }
    
    
    
    
}


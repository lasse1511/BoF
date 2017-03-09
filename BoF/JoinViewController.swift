//
//  JoinViewController.swift
//  BoF
//
//  Created by Lasse Bonner on 17/02/2017.
//  Copyright © 2017 Lasse Bonner. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {

    
    let string = gameDTO.gameName
    var isCreator = gameDTO.isCreator
    

    @IBOutlet var NextBTN: UIButton!
    @IBOutlet var GamenameLBL: UILabel!
    @IBOutlet var NameOfPersTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GamenameLBL.text = "The name of the game is: " + gameDTO.gameName

        // Do any additional setup after loading the view.
        if isCreator == false {NextBTN.isHidden = true}
        else {NextBTN.isHidden = false}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SubmitName(_ sender: UIButton) {
        
    }
     
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

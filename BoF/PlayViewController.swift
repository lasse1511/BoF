//
//  PlayViewController.swift
//  BoF
//
//  Created by Lasse Bonner on 06/03/2017.
//  Copyright © 2017 Lasse Bonner. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    @IBOutlet var countDownLabel: UILabel!
    @IBOutlet private weak var bScreen: UIViewController!
    
    var count = gameDTO.gameTime
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countDownLabel.text = ("Tid: \(count[0]) : \(count[1]) seconds")
        var _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
        
        //alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { action in
            //self.alert.dismiss(animated: true, completion: nil)
              //  }))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateCounter() {
        //you code, this is an example
        if count[0] >= 0 && count[1] >= 10 {
            countDownLabel.text = ("Tid: \(count[0]) : \(count[1]) seconds")
            count[1] -= 1
        }
            
        else if count[0] >= 0 && count[1] > 0 && count[1] < 10 {
            countDownLabel.text = ("Tid: \(count[0]) : 0\(count[1]) seconds")
            count[1] -= 1
        }
            
        
        else if count[0]>0 && count[1] == 0 {
            countDownLabel.text = ("Tid: \(count[0]) : 0\(count[1]) seconds")
            count[1] = 59
            count[0] -= 1
        }
        
        else {
            countDownLabel.text = ("Tid: 0\(count[0]) : 0\(count[1]) seconds")
            
            //present (alert, animated: true, completion: nil)
            showAlertController()
        }
        
    }
    
    func showAlertController() -> Void {
        let alert = UIAlertController(title: "Round over", message: "Round over - hand over the phone to the next team", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { action in
            
            //alert.dismiss(animated: true, completion: nil)
            self.showBetween()           
            
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
     
    }
    
    
    func showBetween() -> Void {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let bScreen = storyBoard.instantiateViewController(withIdentifier: "Between View Controller") as! BetweenViewController
        self.present(bScreen, animated: true, completion: nil)
        
    }
    
    static func instantiate() -> BetweenViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Between View Controller") as! BetweenViewController
    }
}




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



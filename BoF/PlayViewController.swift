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
    
    var count = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countDownLabel.text = ("Tid: \(count + 1) seconds")
        var _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateCounter() {
        //you code, this is an example
        if count > 0 {
            countDownLabel.text = ("Tid: \(count) seconds")
            count -= 1
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
}

//
//  SetupViewController.swift
//  BoF
//
//  Created by Lasse Bonner on 17/02/2017.
//  Copyright © 2017 Lasse Bonner. All rights reserved.
//

import UIKit


class SetupViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {






    @IBOutlet weak var RoundsTable: UITableView!
    @IBOutlet weak var TimePicker: UIPickerView!
    @IBOutlet weak var NextBtn: UIButton!
    
    var TimePickerData = [[0,1,2],[0,5,10,15,20,25,30,35,40,45,50,55]]
    var labelTexts = ["Minutes","Second"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.TimePicker.delegate = self
        self.TimePicker.dataSource = self
        


    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return TimePickerData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(TimePickerData[component][row])
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

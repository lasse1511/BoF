//
//  SetupViewController.swift
//  BoF
//
//  Created by Lasse Bonner on 17/02/2017.
//  Copyright © 2017 Lasse Bonner. All rights reserved.
//

import UIKit


class SetupViewController:
    UIViewController,
    UIPickerViewDelegate,UIPickerViewDataSource, UITableViewDelegate,
UITableViewDataSource {

    @IBOutlet weak var RoundsTable: UITableView!
    @IBOutlet weak var TimePicker: UIPickerView!
    @IBOutlet weak var NextBtn: UIButton!
    
    var TimePickerData = [[0,1,2],[0,5,10,15,20,25,30,35,40,45,50,55]]
    var TableData: [String] = ["Free Speech","Mime","Oneword","Special"]
    


    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(RoundsTable)

        
        self.TimePicker.delegate = self
        self.TimePicker.dataSource = self
        self.RoundsTable.delegate = self
        self.RoundsTable.dataSource = self
        self.RoundsTable.reloadData()
    }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.TableData.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath,animated: true
        )
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "ElementCell")
        
        // Adding the right informations
        cell.textLabel?.text = TableData[indexPath.row]

        return cell
    }
    
    //setup for timepicker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return TimePickerData[component].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if TimePickerData[component]==TimePickerData[0] {
            return String(TimePickerData[component][row])+" min."
        }
        else{
            return String(TimePickerData[component][row])+" sec."
        }
    }

    
    

    @IBAction func NextBtn(_ sender: UIButton) {
        var time: [Int]=[Int]()
        time[0]=TimePickerData[0][TimePicker.selectedRow(inComponent: 0)]
        time[1]=TimePickerData[1][TimePicker.selectedRow(inComponent: 1)]
        gameDTO.gameTime=time;
        
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

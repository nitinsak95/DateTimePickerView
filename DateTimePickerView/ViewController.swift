//
//  ViewController.swift
//  DateTimePickerView
//
//  Created by AFFIXUS IMAC1 on 8/7/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTimePicker: UIDatePicker!
    @IBOutlet weak var lbDate: UILabel!
    @IBOutlet weak var btoo: UIButton!
    @IBOutlet weak var dateTime: UITextField!
    
    @IBOutlet weak var vwtp: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dateTimePicker.isHidden = true
        vwtp.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btOpen(_ sender: Any) {
        dateTimePicker.isHidden = false
        vwtp.isHidden = false
    }
    
    @IBAction func picc(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.full
        dateFormatter.timeStyle = DateFormatter.Style.short
        let strDate = dateFormatter.string(from: dateTimePicker.date)
        lbDate.text = strDate
        dateTime.text = strDate
    }
    
    @IBOutlet weak var btDone: UIButton!
    
    @IBAction func btdd(_ sender: Any) {
         dateTimePicker.isHidden = true
        vwtp.isHidden = true
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        let strDate = dateFormatter.string(from: dateTimePicker.date)
        lbDate.text = strDate
        print("Date is \(strDate)")
        self.view.endEditing(true)
    }
    
   

    
    
}



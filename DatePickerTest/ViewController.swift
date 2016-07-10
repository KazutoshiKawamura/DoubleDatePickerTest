//
//  ViewController.swift
//  DatePickerTest
//
//  Created by kztskawamu on 2016/07/10.
//  Copyright © 2016年 cazcawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet var date1: UIDatePicker!
    @IBOutlet var date2: UIDatePicker!
    var dateArray: [Int] = [0, 0, 0, 0]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        date1.addTarget(self, action: "onDidChangeDate:", forControlEvents: .ValueChanged)
        date2.addTarget(self, action: "onDidChangeDate:", forControlEvents: .ValueChanged)
    }
    
    internal func onDidChangeDate(sender: UIDatePicker) {
        
        // フォーマットを生成.
        let myDateFormatterHour: NSDateFormatter = NSDateFormatter()
        myDateFormatterHour.dateFormat = "HH"
        
        // 日付をフォーマットに則って取得.
        let mySelectedDateHour: NSString = myDateFormatterHour.stringFromDate(sender.date)
//        dateArray[0] = Int(mySelectedDateHour as String)!
        
        // フォーマットを生成.
        let myDateFormatterMinute: NSDateFormatter = NSDateFormatter()
        myDateFormatterMinute.dateFormat = "mm"
        
        // 日付をフォーマットに則って取得.
        let mySelectedDateMinute: NSString = myDateFormatterMinute.stringFromDate(sender.date)
//        dateArray[1] = Int(mySelectedDateMinute as String)!
        
        if sender == date1 {
            dateArray[0] = Int(mySelectedDateHour as String)!
            dateArray[1] = Int(mySelectedDateMinute as String)!
            print("date1  ", dateArray[0]," : ", dateArray[1])
        } else if sender == date2 {
            dateArray[2] = Int(mySelectedDateHour as String)!
            dateArray[3] = Int(mySelectedDateMinute as String)!
            print("date2  ", dateArray[2]," : ", dateArray[3])
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


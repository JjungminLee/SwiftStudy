//
//  ViewController.swift
//  DatePicker
//
//  Created by 이정민 on 2023/03/07.
//

import UIKit

class ViewController: UIViewController {
    
    let timeSelector:Selector=#selector(ViewController.updateTime)

    let interval=1.0
    var count=0
    
    @IBOutlet var lblCurrentTime: UILabel!
    
    @IBOutlet  var lblPickerTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView=sender
        
        let formatter=DateFormatter()
        formatter.dateFormat="yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text="선택시간: "+formatter.string(from:datePickerView.date)
    }
    
    @objc func updateTime(){
//        lblCurrentTime.text=String(count)
//        count+=1
        
        let date = NSDate()
        let formatter=DateFormatter()
        formatter.dateFormat="yyyy-MM-dd HH:mm EEE"
        lblCurrentTime.text="현재시간: "+formatter.string(from:date as Date)
    }
}


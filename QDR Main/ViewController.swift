//
//  ViewController.swift
//  QDR Main
//
//  Created by newuser on 2020-07-23.
//  Copyright © 2020 Ferdin. All rights reserved.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDelegate {

    @IBOutlet var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calendar.delegate = self
        
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY "
        let string = formatter.string(from: date)
        print("\(string)")
    }
    
    
}


//
//  ViewController.swift
//  ThirdApp
//
//  Created by Pavlos Nicolaou on 28/10/2016.
//  Copyright © 2016 Pavlos Nicolaou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func weekOfYear(_ sender: Any) {
        // Log the week value number
        let date = datePicker.date
        let week = datePicker.calendar.component(.weekOfYear, from: date)
        print("week \(week)")
        
        // Pop-up a UIAlertController
        let alert = UIAlertController(title: "Week of Year", message: "week \(week)", preferredStyle: .alert)
        let close = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(close)
        self.present(alert, animated: true, completion: nil)
        
    }
    

}


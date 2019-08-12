//
//  DatePickerViewController.swift
//  Horoscope
//
//  Created by Aiden on 22/06/2019.
//  Copyright © 2019 aiden. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    var pickedDate: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func datePickerIsScrolled(_ sender: Any) {
        datePicker.datePickerMode = UIDatePicker.Mode.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        let selectedDate = dateFormatter.string(from: datePicker.date)
        self.pickedDate = selectedDate
        let player = Player(birthDay: pickedDate)
        
        print(player.day!)
        print(player.month)
        print(pickedDate)
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        performSegue(withIdentifier: "player", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! PersonalityViewController
        
        vc.pickedDate = self.pickedDate
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

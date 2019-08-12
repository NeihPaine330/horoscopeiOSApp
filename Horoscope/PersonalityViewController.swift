//
//  PersonalityViewController.swift
//  Horoscope
//
//  Created by Aiden on 22/06/2019.
//  Copyright © 2019 aiden. All rights reserved.
//

import UIKit

class PersonalityViewController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!
    
    
    @IBOutlet weak var zodiacLabel: UILabel!
    @IBOutlet var zodiacImage: UIImageView!
    @IBOutlet weak var zodiacDateRange: UILabel!
    @IBOutlet weak var personalityTextView: UITextView!
    
    var pickedDate: String = ""
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        player = Player(birthDay: pickedDate)
        updateUI()
        print("Personality ViewController - \(pickedDate)")
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        let zodiacSign = player.zodiacSign
        personalityTextView.text = zodiacSign.personality
        zodiacLabel.text = zodiacSign.zodiacLabel
        switch zodiacSign {
        case .aquarius:
            zodiacImage.image = #imageLiteral(resourceName: "009-aquarius")
            zodiacDateRange.text = "Jan 20 - Feb 18"
        case .picses:
            zodiacImage.image = #imageLiteral(resourceName: "012-gemini")
            zodiacDateRange.text = "Feb 19 - Mar 20"
        case .aries:
            zodiacImage.image = #imageLiteral(resourceName: "026-aries")
            zodiacDateRange.text = "Mar 21 - Apr 19"
        case .taurus:
            zodiacImage.image = #imageLiteral(resourceName: "045-taurus")
            zodiacDateRange.text = "Apr 20 - May 20"
        case .gemini:
            zodiacImage.image = #imageLiteral(resourceName: "023-gemini")
            zodiacDateRange.text = "May 21 - Jun 20"
        case .cancer:
            zodiacImage.image = #imageLiteral(resourceName: "001-cancer")
            zodiacDateRange.text = "Jun 21 - Jul 22"
        case .leo:
            zodiacImage.image = #imageLiteral(resourceName: "005-leo")
            zodiacDateRange.text = "Jul 23 - Aug 22"
        case .virgo:
            zodiacImage.image = #imageLiteral(resourceName: "034-virgo")
            zodiacDateRange.text = "Aug 23 - Sep 22"
        case .libra:
            zodiacImage.image = #imageLiteral(resourceName: "037-libra")
            zodiacDateRange.text = "Sep 23 - Oct 22"
        case .scorpio:
            zodiacImage.image = #imageLiteral(resourceName: "020-scorpio")
            zodiacDateRange.text = "Oct 23 - Nov 21"
        case .sagittarius:
            zodiacImage.image = #imageLiteral(resourceName: "048-sagittarius")
            zodiacDateRange.text = "Nov 22 - Dec 21"
        case .capricon:
            zodiacImage.image = #imageLiteral(resourceName: "046-capricorn")
            zodiacDateRange.text = "Dec 22 - Jan 19"
        }
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
//
//extension PersonalityViewController: UITextViewDelegate {
//    
//    func textViewDidChange(_ textView: UITextView) {
//        print(personalityTextView.text)
//        let size = CGSize(width: view.frame.width, height: .infinity)
//        let estimatedSize = personalityTextView.sizeThatFits(size)
//        
//        textView.constraints.forEach { (constraint) in
//            if constraint.firstAttribute == .height {
//                constraint.constant = estimatedSize.height
//            }
//        }
//    }
//    
//}

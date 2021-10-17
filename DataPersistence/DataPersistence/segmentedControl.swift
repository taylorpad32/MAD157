//
//  segmentedControl.swift
//  DataPersistence
//
//  Created by paul taylor on 10/15/21.
//

import Foundation

import UIKit

class segmentedControl: UIViewController {

    
    @IBOutlet var buttonObject: UIButton!
    @IBOutlet var labelSwitch: UILabel!
    @IBOutlet var switchObject: UISwitch!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    
    
override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view.
    segmentedControl.insertSegment(withTitle: "Morpheus", at: 2,
                                   animated: true)
    segmentedControl.setWidth(75, forSegmentAt: 0)
    segmentedControl.setWidth(75, forSegmentAt: 1)
    segmentedControl.setWidth(75, forSegmentAt: 2)
    }


    @IBAction func touchInside(_ sender: UIButton) {
        buttonObject.setTitle("Truth", for: UIControl.State.normal)
        switchObject.onTintColor = UIColor.blue
        switchObject.onTintColor = UIColor.red
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if switchObject.isOn {
            labelSwitch.text = "Blue Pill"
        } else {
            labelSwitch.text = "Red Pill"
        }
    }
    
    
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
    switch segmentedControl.selectedSegmentIndex {
    case 0:
            labelSwitch.text = "Choice. The problem is choice"
    case 1:
        labelSwitch.text = "You look surprised to see me again Mr Anderson. That's the difference between us. I've been expecting you"
    default:
        labelSwitch.text = "I didn't say it would be easy. Just said it would be the truth"
        
        }
    }
}

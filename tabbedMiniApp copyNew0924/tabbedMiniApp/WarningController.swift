//
//  WarningController.swift
//  tabbedMiniApp
//
//  Created by paul taylor on 9/22/21.
//

//import Foundation

import UIKit

class WarningController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var labelResult: UILabel!
    
    var timeRemaining: Int = 10
    var timer: Timer!
    
    
    @IBOutlet var myPicker: UIPickerView!
    var componentOne: [String] = [String]()
    var componentTwo: [String] = [String]()
    var componentThree: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.delegate = self
        myPicker.dataSource = self
        componentOne = ["🍌","🍑", "🍋", "🍏"]
        componentTwo = ["🍔","🍟", "🌭","🍕"]
        componentThree = ["🏒","🏈", "🏀","🎾"]
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 3
        
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0: return componentOne.count
        case 1: return componentTwo.count
        default: return componentThree.count
        
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row:
                            Int, forComponent component:
                                Int) -> String? {
            switch component {
                case 0: return componentOne [row]
                case 1: return componentTwo[row]
            default: return componentThree[row]
            }
        }
  //  }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(step), userInfo: nil, repeats: true)
    
        
        let alert = UIAlertController(title: "Alert, Alert", message:
                                        "At countdown 0, you will launch a rocket in Kazakstan. You can't stop it!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "😲", style: .default,
                                     handler: { action -> Void in })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func step() {
        if timeRemaining > 0 {
            timeRemaining -= 1
        } else {
            timer.invalidate()
            timeRemaining = 10
        }
        labelResult.text = "\(timeRemaining)"
            
            
        }
        
//    }
    
    
    
    @IBAction func buttonTapped1(_ sender: UIButton) {
        let petIndex = myPicker.selectedRow(inComponent: 0)
        let homeIndex = myPicker.selectedRow(inComponent: 1)
        let placeIndex = myPicker.selectedRow(inComponent: 2)
        
        let alert = UIAlertController(title: "Your Choices Are", message: "\(componentOne[petIndex]) \(componentTwo[homeIndex]) \(componentThree[placeIndex])", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "👍", style: .default, handler: { action -> Void in})
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}


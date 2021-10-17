//
//  ViewController.swift
//  DataPersistence
//
//  Created by paul taylor on 10/11/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func Save(_ sender: Any) {
        UserDefaults.standard.set(Touchdown.text, forKey: "Text")
        UserDefaults.standard.set(TDPoints.text, forKey: "Text1")
        UserDefaults.standard.set(numberofFG.text, forKey: "Text2")
        UserDefaults.standard.set(fgPoints.text, forKey: "Text3")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
      
    }
    
    @IBAction func Load(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        Touchdown.text = UserDefaults.standard.string(forKey: "Text")
        TDPoints.text = UserDefaults.standard.string(forKey: "Text1")
        numberofFG.text = UserDefaults.standard.string(forKey: "Text2")
        fgPoints.text = UserDefaults.standard.string(forKey: "Text3")
    }
    
    @IBAction func Delete(_ sender: Any) {
        mySwitch.isOn = true
        Touchdown.text = ""
        TDPoints.text = ""
        numberofFG.text = ""
        fgPoints.text = ""
    }
    
    
    @IBOutlet var Touchdown: UITextField!
    
    @IBOutlet var TDPoints: UITextField!
    
    @IBOutlet var numberofFG: UITextField!
    
    @IBOutlet var fgPoints: UITextField!
    
    @IBOutlet var scoreTotalLbl: UILabel!
    
    @IBOutlet var calculateScore: UIButton!
    
    @IBOutlet var mySwitch: UISwitch!
    
    
    @IBAction func calculateScore(_ sender: Any) {
    
    
    let finalScore:Int = (Int(Touchdown.text!)!) * Int(TDPoints.text!)!

    let fieldGoals:Int = (Int(numberofFG.text!)!) * Int(fgPoints.text!)!
    
    let totalScore:Int = finalScore + fieldGoals
    
    scoreTotalLbl.text = "\(totalScore)"
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


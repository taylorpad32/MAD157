//
//  ViewController.swift
//  NFLCalculator
//
//  Created by paul taylor on 9/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fieldGoal: UITextField!
    @IBOutlet var touchdown: UITextField!
    
   
    @IBOutlet var numberofFG: UITextField!
    @IBOutlet var fgPoints: UITextField!
    
    
    @IBOutlet var scoreTotalLbl: UILabel!
    @IBOutlet var calculateScore: UIButton!
    
    
    @IBAction func calculateScore(_ sender: Any) {
        
        let finalScore:Int = (Int(touchdown.text!)!) * Int(fieldGoal.text!)!

        let fieldGoals:Int = (Int(numberofFG.text!)!) * Int(fgPoints.text!)!
        
        let totalScore:Int = finalScore + fieldGoals
        
        scoreTotalLbl.text = "\(totalScore)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


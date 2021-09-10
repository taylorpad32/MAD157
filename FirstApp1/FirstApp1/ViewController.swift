//
//  ViewController.swift
//  FirstApp1
//
//  Created by paul taylor on 9/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    // these are properties
    @IBOutlet var labelResult: UILabel!
    @IBOutlet var textDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    //  this is methods
    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text = textDisplay.text?.uppercased()
        print (labelResult.text!)
    }
    

}
   
        // below is the longhand way of creating an object on the user interface
        
      //  let label = UILabel()                                  // this defines the label object
      //  label.frame = CGRect(x: 125, y: 125, width: 200, height: 80)
      //  label.text = "This is a label"                     // customize the label object's appearance
      //  view.addSubview(label)                             // places label on the view
        
      //  let button = UIButton()                            // this defines the button object
      //  button.frame = CGRect(x: 125, y: 300, width: 80, height: 80)
                                                     // 125 point from lft side of screen, 330 from top
      //  button.setTitle("Button", for: .normal)                      // button title gets set
      //  button.setTitleColor(UIColor.blue, for: .normal)            // color of button
      //  view.addSubview(button)                                      // place button on the view
        



//
//  ViewController.swift
//  tabbedMiniApp
//
//  Created by paul taylor on 9/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    let colors = [UIColor.red, UIColor.blue, UIColor.green, UIColor.purple]
    var index = 0

    @IBAction func ButtonAction(_ sender: Any) {
        
        self.view.backgroundColor = colors[index]
        
        if index == colors.count - 1 {
            index = 0 }
        else {
            index += 1
        }
    }
    
    

}


//
//  Matrix.swift
//  DataPersistence
//
//  Created by paul taylor on 10/14/21.
//

import Foundation

import UIKit

class Matrix: UIViewController {

    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var labelSwitch: UISwitch!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        
        // Do any additional setup after loading the view.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        

        let touch = touches.first
      
        if touch?.view == imageView {

            print ("Unfortunately no one can be told what iOS is. You have to see it for yourself")
        } else {
            print ("Welcome to the desert of the real!")
        }
    }
    
}


//
//  ViewController.swift
//  Save2TextFile
//
//  Created by paul taylor on 10/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func writeMyText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            try typeTextHere.text.write(to: url!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Error writing file")
        }
    }
    
    
    @IBAction func readMyText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            let fileContent = try String(contentsOf: url!, encoding:
                String.Encoding.utf8)
            displayTextHere.text = fileContent
        } catch {
            print("Error reading file")
        }
        
        
    }
    
    @IBOutlet var typeTextHere: UITextView!
    
    @IBOutlet var displayTextHere: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        typeTextHere.text = "Type your new text here"
        displayTextHere.text = ""
    }


}


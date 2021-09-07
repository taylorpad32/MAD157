//
//  DetailViewController.swift
//  CarFeatures
//
//  Created by paul taylor on 9/7/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?   // this creates a property in DetailViewController that hold image name to load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage { //check to see if something in selectedImage.
            imageView.image = UIImage(named: imageToLoad) // if there is it is placed in imageToLoad, then passed to UIImage and loaded
        }

        // Do any additional setup after loading the view.
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

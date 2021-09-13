//
//  ViewController.swift
//  CarFeatures
//
//  Created by paul taylor on 9/6/21.
//

import UIKit

//class ViewController: UIViewController { // change to UITableViewController. inherits functionality from table view. this gives us large amount of extra functionality
class ViewController: UITableViewController {
    var pictures = [String]() //this tells swift the data held will be an array of strings, where each item is the name of a car feature picture

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default // declares constant fm. assigns it value returned by Filemanager.default. we r using it to look for files
        let path = Bundle.main.resourcePath!  // this line asks 'where can i find the images i added to the app
        let items = try! fm.contentsOfDirectory(atPath: path) //try to read the contents of the resource path. The constant 'items' is set to the contents of the path returned by the line before

        for item in items { //starts a loop that executes once for every item in the app bundle
            if item.hasPrefix("car") { //if item has prefix car. code is executed if hasPrefix is true
                // this is an image of the car feature to load
                pictures.append(item)
            }
        }
        print(pictures)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
        //override existing behavior. func is the new function. func name is tableView. the scrolling aspect that contains all image names. ( UITableView is the data type. describes what it is. we only have 1 section in this code. the above code makes the table show the rows.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)  -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
        // This code tells us what each row should look like. cellForRowAt indexPath: IndexPath is important part of function name. cellFor is called when need to provide a row.  UITableViewCell means this fucntion returns a table view cell.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // try loading the "Detail" view controller
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController { 
            // set the selected Image property
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


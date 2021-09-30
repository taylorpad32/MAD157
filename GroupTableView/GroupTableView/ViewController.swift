//
//  ViewController.swift
//  GroupTableView
//
//  Created by paul taylor on 9/28/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
    @IBOutlet var petType: UITableView!
    
  //  let petArray = [["Mammal", "cat", "dog", "hamster", "gerbil", "rabbit"], ["Bird", "parrot", "canary", "finch"], ["Fish", "tropical fish", "goldfish", "sea horses"], ["Reptile", "turtle", "snake", "lizzard"]]
    
  //  let indexArray = ["🐅M", "🦆B", "🐠F", "🦎R"]
    
    
    let petArray = [["Metropolitan Division", "Carolina Hurricanes", "Columbus Blue Jackets", "New Jersey Devils", "New York Islanders", "New York Rangers", "Philadelphia Flyers", "Pittsburgh Penguins", "Washington Capitals"], ["Atlantic Division ", "Boston Bruins", "Buffalo Sabres", "Detroit Red Wings", "Florida Panthers", "Montreal Canadiens", "Ottawa Senators", "Tampa Bay Lightning", "Toronto Maple Leafs"], ["Central Division", "Arizona Coyotes", "Chicago Blackhawks", "Colorado Avalanche", "Dallas Stars", "Minnesota Wild", "Nashville Predators", "St Louis Blues", "Winnipeg Jets"], ["Pacific Division", "Anaheim Ducks", "Calgary Flames", "Edmonton Oilers", "Los Angeles Kings", "San Jose Sharks", "Seattle Kraken", "Vancouver Canucks", "Vegas Golden Knights"]]
    
    let indexArray = ["🏙M", "🌊A", "🚂C", "🌴P"]
    
    

    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petType.dataSource = self
        petType.delegate = self
        petType.sectionIndexColor = UIColor.white
        petType.sectionIndexBackgroundColor = UIColor.black
        petType.sectionIndexTrackingBackgroundColor = UIColor.darkGray
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray[section].count - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(
                style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = petArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = petArray[indexPath.section][indexPath.row + 1]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        
        if selectedItem == "Chicago Blackhawks" {
        let okAction = UIAlertAction(title: "🏒Great Choice!", style: .default,
                                     handler: { action -> Void in })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
            
    } else if selectedItem == "Edmonton Oilers" {
        let okAction = UIAlertAction(title: " 🏆 MVP Connor McDavid ", style: .default,
                                     handler: { action -> Void in })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    } else if selectedItem == "Boston Bruins" {
        let okAction = UIAlertAction(title: "😭 17 seconds!", style: .default,
                                     handler: { action -> Void in })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    else {
        let okAction = UIAlertAction(title: "OK", style: .default,
                                     handler: { action -> Void in })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return petArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return petArray[section][0]
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return indexArray
    }
    
    
    
}


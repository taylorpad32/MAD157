//
//  ViewController.swift
//  tic tac toe 1
//
//  Created by paul taylor on 8/31/21.
//

import UIKit

class ViewController: UIViewController
{
    enum Turn {  // wanted to put a set of pre-defined elements
        // enum is called Turn, and the enum cases are nought and cross
        case nought
        case cross
    }
    
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    var firstTurn = Turn.cross
    var currentTurn = Turn.cross
    
    var nought = "O"  //these are the game pieces
    var cross = "X"  // these are the game pieces
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func boardTapAction(_ sender: UIButton) {
              addToBoard(sender)    // call from our board TapAction giving it the sender button
    }
    func addToBoard(_ sender: UIButton)  // receives sender, the button that is being tapped.
    {
        if(sender.title(for: .normal) == nil) // nothing in buttons title
        {
            if(currentTurn == Turn.nought) {// if its noughts turn, we will set the title to nought
                sender.setTitle(nought, for: .normal)// then set current turn and turnlabel to cross
                currentTurn = Turn.cross
                turnLabel.text = cross
            }
            else if(currentTurn == Turn.cross) {// if its noughts turn, we will set the title to nought
                sender.setTitle(cross, for: .normal)// then set current turn and turnlabel to cross
                currentTurn = Turn.nought
                turnLabel.text = nought
            }
    }
}
}



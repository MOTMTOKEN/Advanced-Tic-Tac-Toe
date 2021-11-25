//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Amir Nilsson on 2021-11-25.
//

import UIKit

class ViewController: UIViewController {
    
    var ActivePlayer = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let selectedButton = sender as! UIButton
        // trying to change font size
        // selectedButton.titleLabel?.font = UIFont(name: "System", size:100)

       // print(selectedButton.tag) checks which button is clicked
        
        if ActivePlayer == 1{
            selectedButton.setTitle("X", for: UIControl.State.normal)
            selectedButton.backgroundColor = UIColor(red: 100/255, green: 250/255, blue: 507255, alpha: 0.5)
            ActivePlayer = 2
        } else {
            selectedButton.setTitle("O", for: UIControl.State.normal)
            selectedButton.backgroundColor = UIColor(red: 255/255, green: 250/255, blue: 507255, alpha: 0.5)
            ActivePlayer = 1
        }
        
        // can't press button twice
        selectedButton.isEnabled = false
        
    }
    
    func playTheGame(selectedButton: UIButton) {
        
    }
}


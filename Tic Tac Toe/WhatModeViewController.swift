//
//  WhatModeViewController.swift
//  Tic Tac Toe
//
//  Created by Amir Nilsson on 2021-12-01.
//

import UIKit

class WhatModeViewController: UIViewController {
    
    let oneName = "oneName"
    
    let toNames = "toNames"
    
    @IBAction func playerVsComputer(_ sender: Any) {
        
        performSegue(withIdentifier: oneName, sender: self)
        
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == oneName {
            
            let destinationVc = segue.destination as! ViewController
            // destinationVc.recivingMessage2 = "Computer"
        }
    } */
    
    
    @IBAction func playerVsPlayer(_ sender: Any) {
        
        performSegue(withIdentifier: toNames, sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

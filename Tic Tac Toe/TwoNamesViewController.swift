//
//  TwoNamesViewController.swift
//  Tic Tac Toe
//
//  Created by Amir Nilsson on 2021-11-26.
//

import UIKit

class TwoNamesViewController: UIViewController {
    
    let toMainGame = "segueMainGame"

    @IBOutlet weak var player1Name: UITextField!
    
    @IBOutlet weak var player2Name: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func playButton(_ sender: Any) {
        
        performSegue(withIdentifier: toMainGame, sender: self)
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toMainGame {
            
            let destinationVc = segue.destination as! ViewController
            
            
                destinationVc.recivingMessage1 = player1Name.text
            
            
            
                destinationVc.recivingMessage2 = player2Name.text
            
            
        }
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

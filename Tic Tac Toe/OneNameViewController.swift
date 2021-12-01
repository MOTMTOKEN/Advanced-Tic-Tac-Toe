//
//  OneNameViewController.swift
//  Tic Tac Toe
//
//  Created by Amir Nilsson on 2021-12-01.
//

import UIKit

class OneNameViewController: UIViewController {
    
    
    let toMainOneName = "toMainOneName"
    
    
    @IBOutlet weak var playersName: UITextField!
    
    @IBAction func playButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: toMainOneName, sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toMainOneName {
            
            let destinationVc = segue.destination as! ViewController
            
            destinationVc.recivingMessage1 = playersName.text
            
            destinationVc.recivingMessage2 = "Computer"
            
            destinationVc.whosPlaying = 1
        }
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

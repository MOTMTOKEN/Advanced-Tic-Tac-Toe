//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Amir Nilsson on 2021-11-25.
//

import UIKit

class ViewController: UIViewController {
    
    var ActivePlayer = 1
    var player1 = [Int]()
    var player2 = [Int]()

    @IBOutlet weak var player1NameShow: UILabel!
    
    @IBOutlet weak var player2NameShow: UILabel!
    
    @IBOutlet weak var whosTurn: UILabel!
    
    
    var recivingMessage1 : String?

    var recivingMessage2 : String?

    
    var player1Points = 0
    var player2Points = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        player1NameShow.text = "\(recivingMessage1 ?? "")"
        player2NameShow.text = "\(recivingMessage2 ?? "")"
        whosTurn.text = "X"

        
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let selectedButton = sender as! UIButton
        // trying to change font size
        // selectedButton.titleLabel?.font = UIFont(name: "System", size:100)

       // print(selectedButton.tag) checks which button is clicked
        
        if ActivePlayer == 1{
            selectedButton.setTitle("X", for: UIControl.State.normal)
            selectedButton.backgroundColor = UIColor(red: 100/255, green: 250/255, blue: 507255, alpha: 0.5)
            // since we gave all buttons a tag we can put the tags (1-9) into an array
            // and track what moves the player made
            player1.append(selectedButton.tag)
           // print(player1)
            ActivePlayer = 2
            //Whos turn next
            whosTurn.text = "O"
            // checks for winner every move
            findWinner()
        } else {
            selectedButton.setTitle("O", for: UIControl.State.normal)
            selectedButton.backgroundColor = UIColor(red: 255/255, green: 250/255, blue: 507255, alpha: 0.5)
            player2.append(selectedButton.tag)
          //  print(player2)
            whosTurn.text = "X"
            ActivePlayer = 1
            findWinner()
        }
        
        // can't press button twice
        selectedButton.isEnabled = false
        
    }
    
    func findWinner()  {
            var winner = -1
            
            // row_1
            if( player1.contains(1) &&  player1.contains(2) &&  player1.contains(3)){
                winner = 1
            }
            
            if( player2.contains(1) &&  player2.contains(2) &&  player2.contains(3)){
                winner = 2
            }
            
            // row_2
            if( player1.contains(4) &&  player1.contains(5) &&  player1.contains(6)){
                winner = 1
            }
            
            if( player2.contains(4) &&  player2.contains(5) &&  player2.contains(6)){
                winner = 2
            }
            
            
            // row_3
            if( player1.contains(7) &&  player1.contains(8) &&  player1.contains(9)){
                winner = 1
            }
            
            if( player2.contains(7) &&  player2.contains(8) &&  player2.contains(9)){
                winner = 2
            }
            
            
            // col_1
            if( player1.contains(1) &&  player1.contains(4) &&  player1.contains(7)){
                winner = 1
            }
            
            if( player2.contains(1) &&  player2.contains(4) &&  player2.contains(7)){
                winner = 2
            }
            
            // col_2
            if( player1.contains(2) &&  player1.contains(5) &&  player1.contains(8)){
                winner = 1
            }
            
            if( player2.contains(2) &&  player2.contains(5) &&  player2.contains(8)){
                winner = 2
            }
            
            // col_3
            if( player1.contains(3) &&  player1.contains(6) &&  player1.contains(9)){
                winner = 1
            }
            
            if( player2.contains(3) &&  player2.contains(6) &&  player2.contains(9)){
                winner = 2
            }
        
            // diagonal_1
            if( player1.contains(1) &&  player1.contains(5) &&  player1.contains(9)){
            winner = 1
            }
        
            if( player2.contains(1) &&  player2.contains(5) &&  player2.contains(9)){
            winner = 2
            }
        
            // diagonal_2
            if( player1.contains(3) &&  player1.contains(5) &&  player1.contains(7)){
            winner = 1
            }
    
            if( player2.contains(3) &&  player2.contains(5) &&  player2.contains(7)){
            winner = 2
            }
            
            
        if winner != -1 {
                    
                    var msg = ""
                    if winner == 1 {
                        msg = " \(player1NameShow.text ?? "") is winner"
                        player1Points += 1
                        // Show updated score
                        player1NameShow.text = "\(recivingMessage1 ?? "") : \(String(player1Points))"
                    }else{
                      msg = " \(player2NameShow.text ?? "") is winner"
                        player2Points += 1
                        // Show updated score
                        player2NameShow.text = "\(recivingMessage2 ?? "") : \(String(player2Points))"
                    }
                    //print(msg)
                    //show alert
            let alert = UIAlertController(title: "Winner", message: msg, preferredStyle: UIAlertController.Style.alert)
             
             alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
             
             self.present(alert, animated: true, completion: nil)
                    
                }

         if (player1.count == 5 || player2.count == 5) {
             
             let alert = UIAlertController(title: "Winner", message: "its a draw", preferredStyle: UIAlertController.Style.alert)
              
              alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
              
              self.present(alert, animated: true, completion: nil)
    }
}
    
    
}

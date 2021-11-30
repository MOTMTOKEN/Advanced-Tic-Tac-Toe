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
    var foundWinner = false
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet weak var btn6: UIButton!
    
    @IBOutlet weak var btn7: UIButton!
    
    @IBOutlet weak var btn8: UIButton!
    
    @IBOutlet weak var btn9: UIButton!
    

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
         
       // print(selectedButton.tag) checks which button is clicked
        
        
            selectedButton.isEnabled = false
        
        
        if ActivePlayer == 1{
            selectedButton.setTitle("X", for: UIControl.State.normal)
            selectedButton.backgroundColor = UIColor(red: 100/255, green: 250/255, blue: 507255, alpha: 0.5)
            // since we gave all buttons a tag we can put the tags (1-9) into an array
            // and track what moves the player made
           // selectedButton.titleLabel?.font = .systemFont(ofSize: 100)    // UIFont(name: "System", size:100)

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
        
        // can't press button twice if foundWinner is false
        
        
        
        
        
    }
    
    func findWinner() {
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
            
            
            
            resetGame()
                    
                }

         if (player1.count == 5 || player2.count == 5) {
             
             let alert = UIAlertController(title: "Winner", message: "its a draw", preferredStyle: UIAlertController.Style.alert)
              
              alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
              
              self.present(alert, animated: true, completion: nil)
             
             
             resetGame()
             
    }
        
        
}
    
    func resetGame() {
        
      //  player1 = [Int]()
      //  player2 = [Int]()
        
      //  ActivePlayer = 1
            
        ActivePlayer = 1
        player1.removeAll()
        player2.removeAll()
        
        
                

        btn1.setTitle("", for: UIControl.State.normal)
        btn2.setTitle("", for: UIControl.State.normal)
        btn3.setTitle("", for: UIControl.State.normal)
        btn4.setTitle("", for: UIControl.State.normal)
        btn5.setTitle("", for: UIControl.State.normal)
        btn6.setTitle("", for: UIControl.State.normal)
        btn7.setTitle("", for: UIControl.State.normal)
        btn8.setTitle("", for: UIControl.State.normal)
        btn9.setTitle("", for: UIControl.State.normal)
        
        btn1.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
        btn2.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
        btn3.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
        btn4.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
        btn5.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
        btn6.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
        btn7.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
        btn8.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
        btn9.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)

        btn1.isEnabled = true
        btn2.isEnabled = true
        btn3.isEnabled = true
        btn4.isEnabled = true
        btn5.isEnabled = true
        btn6.isEnabled = true
        btn7.isEnabled = true
        btn8.isEnabled = true
        btn9.isEnabled = true
                    
        
        }
    
}

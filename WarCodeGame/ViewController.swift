//
//  ViewController.swift
//  WarCodeGame
//
//  Created by Alan Yin on 1/4/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    
    @IBOutlet weak var playerscore: UILabel!
    
    
    @IBOutlet weak var cpuscore: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealTap(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
     
        
        let rightNumber = Int.random(in: 2...14)
   
        
        leftimageview.image = UIImage(named: "card\(leftNumber)")
        
        rightimageview.image = UIImage(named: "card\(rightNumber)")
       
        if leftNumber > rightNumber {
            // Player wins
            leftscore += 1
            
            playerscore.text = String(leftscore)
        }
        else if leftNumber < rightNumber {
            // CPU wins
            rightscore += 1
            
            cpuscore.text = String(rightscore)
            
        }
        else {
            // tie
        }
        
    }
    

}


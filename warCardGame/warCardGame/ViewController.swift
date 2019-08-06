//
//  ViewController.swift
//  warCardGame
//
//  Created by Esraa Alhashemi on 10/07/2019.
//  Copyright © 2019 Esraa Alhashemi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lhp: UIImageView!
    @IBOutlet weak var rhp: UIImageView!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    var score = 0
    @IBOutlet weak var cpuLabel: UILabel!
    var cpu = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func duel(_ sender: Any) {
        
        let lNum = Int.random(in: 2...14)
        // print(lNum)
        
        let rNum = Int.random(in: 2...14)
        // print(rNum)
        
        // var left = "card"+lNum
        
        lhp.image = UIImage(named: "card\(lNum)")
        rhp.image = UIImage(named: "card\(rNum)")
        
        
        if lNum > rNum{
            
            score+=1
            
            //   scoreLabel.text+=1
        }
        else if lNum < rNum{
            cpu+=1
        }
        
        scoreLabel.text = String(score)
        cpuLabel.text = String(cpu)
        
    }
    

}


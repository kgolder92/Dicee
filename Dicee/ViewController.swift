//
//  ViewController.swift
//  Dicee
//
//  Created by kayla golder on 6/28/18.
//  Copyright © 2018 kayla golder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
   // let diceArray = [#imageLiteral(resourceName: "dice6"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice3")]
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice5", "dice6"]
    
    @IBOutlet weak var diceImgView1: UIImageView! //changes the appearence of the UI element - IBOutlet
    @IBOutlet weak var diceImgView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollBtnPressed(_ sender: UIButton) { //IBAction - notifys the code when the ui element is interacted with
       updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //.image is changing the image properties of diceImgView1.
        //UIImage is a type
        diceImgView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImgView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
  
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
}


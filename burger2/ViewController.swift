//
//  ViewController.swift
//  burger2
//
//  Created by CLAIRE MCGUIRE on 12/5/23.
//

import UIKit

public class AppData{
    static var words : [String] = []
}

class ViewController: UIViewController {
    var guess = ""
    var word = "pony"
    var incorrectGuesses = 0
    var greg : [UIImage] = []
    
    @IBOutlet weak var guessOut: UILabel!
    
    
    @IBOutlet weak var aOut: UIButton!
    @IBOutlet weak var bOut: UIButton!
    @IBOutlet weak var cOut: UIButton!
    @IBOutlet weak var dOut: UIButton!
    @IBOutlet weak var eOut: UIButton!
    @IBOutlet weak var fOut: UIButton!
    @IBOutlet weak var gOut: UIButton!
    @IBOutlet weak var hOut: UIButton!
    @IBOutlet weak var iOut: UIButton!
    @IBOutlet weak var jOut: UIButton!
    @IBOutlet weak var kOut: UIButton!
    @IBOutlet weak var lOut: UIButton!
    @IBOutlet weak var mOut: UIButton!
    @IBOutlet weak var nOut: UIButton!
    @IBOutlet weak var oOut: UIButton!
    @IBOutlet weak var pOut: UIButton!
    @IBOutlet weak var qOut: UIButton!
    @IBOutlet weak var rOut: UIButton!
    @IBOutlet weak var sOut: UIButton!
    @IBOutlet weak var tOut: UIButton!
    @IBOutlet weak var uOut: UIButton!
    @IBOutlet weak var vOut: UIButton!
    @IBOutlet weak var wOut: UIButton!
    @IBOutlet weak var xOut: UIButton!
    @IBOutlet weak var yOut: UIButton!
    @IBOutlet weak var zOut: UIButton!
//help
    @IBOutlet weak var headOut: UIImageView!
    @IBOutlet weak var bodyOut: UIImageView!
    @IBOutlet weak var rightLegOut: UIImageView!
    @IBOutlet weak var leftLegOut: UIImageView!
    @IBOutlet weak var leftArmOut: UIImageView!
    @IBOutlet weak var rightArmOut: UIImageView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        greg.append(headOut.image!)
        greg.append(bodyOut.image!)
        greg.append(rightArmOut.image!)
        greg.append(leftArmOut.image!)
        greg.append(rightLegOut.image!)
        greg.append(leftLegOut.image!)
        
        headOut.isHidden = true
        bodyOut.isHidden = true
        rightArmOut.isHidden = true
        leftArmOut.isHidden = true
        leftLegOut.isHidden = true
        rightLegOut.isHidden = true
       
        for x in 0..<word.count {
            guess+="_ "
           
            }
        guessOut.text = guess
    }
    func plEASE( ) {
        
    }
    
    @IBAction func aAct(_ sender: UIButton) {
        var count = 0
        guess = ""
        for x in 0..<word.count {
            var help = word.index(word.startIndex, offsetBy: x)
            if (word[help] == "a"){
                guess+="a"
                count+=1
            }
            else{
                
                guess+="_ "
            }
        }
        guessOut.text = guess
        if (count<1){
            incorrectGuesses+=1
            if (incorrectGuesses==1){
                headOut.isHidden = false
            }
            else if (incorrectGuesses==2){
                bodyOut.isHidden = false
            }
            else if (incorrectGuesses == 3){
                leftArmOut.isHidden = false
            }
            else if (incorrectGuesses == 4){
                rightArmOut.isHidden = false
            }
            else if (incorrectGuesses == 5){
                rightLegOut.isHidden = false
            }
            else if (incorrectGuesses == 6){
                leftLegOut.isHidden = false
                guessOut.text = word
                guessOut.textColor = UIColor.red
            }
            else {
                guessOut.text = "game over idiot"
                
            }
                        
        }
        aOut.isEnabled = false
        aOut.tintColor = UIColor.red
    }
    
}


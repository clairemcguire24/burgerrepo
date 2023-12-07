//
//  ViewController.swift
//  burger2
//
//  Created by CLAIRE MCGUIRE on 12/5/23.
//

import UIKit



class ViewController: UIViewController {
    var guess = ""
    var word = "pony"
    var incorrectGuesses = 0
    var greg : [UIImage] = []
    var gameswon = 0
    
    var words = ["a","pony", "bear", "cat", "computer", "jungle", "freak", "idiot", "loser","oblique" ]
    
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
    
  
    @IBOutlet weak var winLoseOut: UILabel!
    @IBOutlet weak var reloadOut: UIButton!
    
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
        reloadOut.isHidden = true
       
        for x in 0..<words[gameswon].count {
            guess+="_ "
           
            }
        guessOut.text = guess
    }
    
    
    func win(){
        if (guess == words[gameswon]){
            gameswon+=1
            winLoseOut.text = "you win!"
            reloadOut.isHidden = false
            
        }
        
    }
    
    @IBAction func reloadAct(_ sender: UIButton) {
        guess=""
        for x in 0..<words[gameswon].count {
            guess+="_ "
           
            }
        winLoseOut.text = ""
        guessOut.text = guess
        
        headOut.isHidden = true
        bodyOut.isHidden = true
        rightArmOut.isHidden = true
        leftArmOut.isHidden = true
        leftLegOut.isHidden = true
        rightLegOut.isHidden = true
        reloadOut.isHidden = true
        
    }
    
    
    @IBAction func aAct(_ sender: UIButton) {
       var count = 0
        guess = ""
        for x in 0..<words[gameswon].count {
          var thisWord = words[gameswon]
            var help = words[gameswon].index(words[gameswon].startIndex, offsetBy: x)
            if (thisWord[help] == "a"){
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
                winLoseOut.text = "incorrect guess"
            }
            else if (incorrectGuesses==2){
                bodyOut.isHidden = false
                winLoseOut.text = "incorrect guess"
            }
            else if (incorrectGuesses == 3){
                leftArmOut.isHidden = false
                winLoseOut.text = "incorrect guess"
            }
            else if (incorrectGuesses == 4){
                rightArmOut.isHidden = false
                winLoseOut.text = "incorrect guess"
            }
            else if (incorrectGuesses == 5){
                rightLegOut.isHidden = false
                winLoseOut.text = "incorrect guess"
            }
            else if (incorrectGuesses == 6){
                leftLegOut.isHidden = false
                guessOut.text = words[gameswon]
                guessOut.textColor = UIColor.red
                gameswon+=1
                winLoseOut.text = "you lose"
                reloadOut.isHidden = false
            }
            else {
                guessOut.text = "game over idiot"
                
            }
                        
        }
        aOut.isEnabled = false
        aOut.tintColor = UIColor.red
        win()
    }
  
    
    @IBAction func bAct(_ sender: UIButton) {
        var count = 0
         guess = ""
         for x in 0..<words[gameswon].count {
           var thisWord = words[gameswon]
             var help = words[gameswon].index(words[gameswon].startIndex, offsetBy: x)
             if (thisWord[help] == "b"){
                 guess+="b"
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
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses==2){
                 bodyOut.isHidden = false
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses == 3){
                 leftArmOut.isHidden = false
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses == 4){
                 rightArmOut.isHidden = false
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses == 5){
                 rightLegOut.isHidden = false
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses == 6){
                 leftLegOut.isHidden = false
                 guessOut.text = words[gameswon]
                 guessOut.textColor = UIColor.red
                 gameswon+=1
                 winLoseOut.text = "you lose"
                 reloadOut.isHidden = false
             }
             else {
                 guessOut.text = "game over idiot"
                 
             }
                         
         }
         bOut.isEnabled = false
         bOut.tintColor = UIColor.red
         win()
     }
     
    
    @IBAction func cAct(_ sender: UIButton) {
        var count = 0
         guess = ""
         for x in 0..<words[gameswon].count {
           var thisWord = words[gameswon]
             var help = words[gameswon].index(words[gameswon].startIndex, offsetBy: x)
             if (thisWord[help] == "c"){
                 guess+="c"
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
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses==2){
                 bodyOut.isHidden = false
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses == 3){
                 leftArmOut.isHidden = false
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses == 4){
                 rightArmOut.isHidden = false
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses == 5){
                 rightLegOut.isHidden = false
                 winLoseOut.text = "incorrect guess"
             }
             else if (incorrectGuesses == 6){
                 leftLegOut.isHidden = false
                 guessOut.text = words[gameswon]
                 guessOut.textColor = UIColor.red
                 gameswon+=1
                 winLoseOut.text = "you lose"
                 reloadOut.isHidden = false
             }
             else {
                 guessOut.text = "game over idiot"
                 
             }
                         
         }
         cOut.isEnabled = false
         cOut.tintColor = UIColor.red
         win()
     }
     
        
    
    
}




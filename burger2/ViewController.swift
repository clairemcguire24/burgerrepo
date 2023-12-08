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
    var correct = [Int]()
    
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
       
//        greg.append(headOut.image!)
//        greg.append(bodyOut.image!)
//        greg.append(rightArmOut.image!)
//        greg.append(leftArmOut.image!)
//        greg.append(rightLegOut.image!)
//        greg.append(leftLegOut.image!)
        
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
        incorrectGuesses = 0
        guessOut.textColor = UIColor.black
        
        headOut.isHidden = true
        bodyOut.isHidden = true
        rightArmOut.isHidden = true
        leftArmOut.isHidden = true
        leftLegOut.isHidden = true
        rightLegOut.isHidden = true
        reloadOut.isHidden = true
        
        aOut.isEnabled = true
        bOut.isEnabled = true
        cOut.isEnabled = true
        dOut.isEnabled = true
        eOut.isEnabled = true
        fOut.isEnabled = true
        gOut.isEnabled = true
        hOut.isEnabled = true
        iOut.isEnabled = true
        jOut.isEnabled = true
        kOut.isEnabled = true
        lOut.isEnabled = true
        mOut.isEnabled = true
        nOut.isEnabled = true
        oOut.isEnabled = true
        pOut.isEnabled = true
        qOut.isEnabled = true
        rOut.isEnabled = true
        sOut.isEnabled = true
        tOut.isEnabled = true
        uOut.isEnabled = true
        vOut.isEnabled = true
        wOut.isEnabled = true
        xOut.isEnabled = true
        yOut.isEnabled = true
        zOut.isEnabled = true
        //god i love coding
        correct = [Int]()
    }
    
    func checkLetters(letter : Character){
        guess = ""
//
 var gotLetter = false
 var thisWord = words[gameswon]
//        for i in thisWord.indices{
//            if (thisWord[i] == letter){
//                guess+=String(letter)
//                gotLetter = true
//            }
//            else {
//                guess+="_"
//            }
//        }
     
        for x in 0..<thisWord.count{
            var help = words[gameswon].index(words[gameswon].startIndex , offsetBy: x)
            thisWord[help]
            if (thisWord[help] == letter){
                        guess+=String(letter)
                        gotLetter = true
                        correct.append(x)
                     }
                       else {
                          guess+="_"
                      }
        }
        
        var temp = Array(guess)
        for c in correct {
            temp[c] = thisWord[words[gameswon].index(words[gameswon].startIndex , offsetBy: c)]
        }
        guess = String(temp)
        guessOut.text = guess
        
        if (!gotLetter){
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
        
    }
    
   
    
    @IBAction func aAct(_ sender: UIButton) {
        checkLetters(letter: "a")
        
        aOut.isEnabled = false
        win()
    }
  
    
    @IBAction func bAct(_ sender: UIButton) {
        checkLetters(letter: "b")
         bOut.isEnabled = false
        //guessOut.text = guess
         win()
        
     }
     
    
    @IBAction func cAct(_ sender: UIButton) {
        checkLetters(letter: "c")
         cOut.isEnabled = false
       // guessOut.text = guess
         win()
     }
     
        
    
    @IBAction func dAct(_ sender: UIButton) {
        checkLetters(letter: "d")
         dOut.isEnabled = false
      //  guessOut.text = guess
         win()
    }
    
    
    @IBAction func eOut(_ sender: UIButton) {
        checkLetters(letter: "e")
         eOut.isEnabled = false
       // guessOut.text = guess
         win()
    }
    
    
    @IBAction func fAct(_ sender: UIButton) {
        checkLetters(letter: "f")
         fOut.isEnabled = false
         win()
    }
    
    
    @IBAction func gAct(_ sender: UIButton) {
        checkLetters(letter: "g")
         gOut.isEnabled = false
         win()
        
    }
    
    @IBAction func hAct(_ sender: UIButton) {
        checkLetters(letter: "h")
         hOut.isEnabled = false
         win()
    }
    
    @IBAction func iAct(_ sender: UIButton) {
        checkLetters(letter: "i")
         iOut.isEnabled = false
         win()
    }
    
    @IBAction func jOut(_ sender: UIButton) {
        checkLetters(letter: "j")
         jOut.isEnabled = false
         win()
    }
    
    @IBAction func kOut(_ sender: UIButton) {
        checkLetters(letter: "k")
         kOut.isEnabled = false
         win()
    }
    
    @IBAction func lAct(_ sender: UIButton) {
        checkLetters(letter: "l")
         lOut.isEnabled = false
         win()
    }
    
    @IBAction func mAct(_ sender: UIButton) {
        checkLetters(letter: "m")
         mOut.isEnabled = false
         win()
        
    }
    
    
    @IBAction func nAct(_ sender: UIButton) {
        checkLetters(letter: "n")
         nOut.isEnabled = false
         win()
    }
    
    @IBAction func oAct(_ sender: UIButton) {
        checkLetters(letter: "o")
         oOut.isEnabled = false
         win()
    }
    
    @IBAction func pAct(_ sender: UIButton) {
        checkLetters(letter: "p")
         pOut.isEnabled = false
         win()
    }
    
    @IBAction func qAct(_ sender: UIButton) {
        checkLetters(letter: "q")
         qOut.isEnabled = false
         win()
    }
    
    @IBAction func rAct(_ sender: UIButton) {
        checkLetters(letter: "r")
         rOut.isEnabled = false
         win()
    }
    
    @IBAction func sAct(_ sender: UIButton) {
        checkLetters(letter: "s")
         sOut.isEnabled = false
         win()
    }
    
    @IBAction func tAct(_ sender: UIButton) {
        checkLetters(letter: "t")
         tOut.isEnabled = false
         win()
    }
   
    @IBAction func uAct(_ sender: UIButton) {
        checkLetters(letter: "u")
         uOut.isEnabled = false
         win()
    }
    
    @IBAction func vAct(_ sender: UIButton) {
        checkLetters(letter: "v")
         vOut.isEnabled = false
         win()
    }
    
    @IBAction func wAct(_ sender: UIButton) {
        checkLetters(letter: "w")
         wOut.isEnabled = false
         win()
    }
    
    @IBAction func xAct(_ sender: UIButton) {
        checkLetters(letter: "x")
         xOut.isEnabled = false
         win()
    }
    
    @IBAction func yOut(_ sender: UIButton) {
        checkLetters(letter: "y")
         yOut.isEnabled = false
         win()
    }
    
    @IBAction func zAct(_ sender: UIButton) {
        checkLetters(letter: "z")
         zOut.isEnabled = false
         win()
    }
}




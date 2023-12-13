//
//  ViewController.swift
//  burger2
//
//  Created by CLAIRE MCGUIRE on 12/5/23.
//

import UIKit

class AppData{
    static var words = [
        ["compsci","pony","lit","fire", "mid", "cazy"],
        ["difficult", "computer", "jungle",  "idiot", "loser","oblique"],
        ["christmas","stockings","reindeer","mistletoe", "snowflake", "gingerbread"]
    ]
    static var gameswon = 0
    static var gamesplayed = 0
   static var gameslost = 0
    static var currentLevel = 0
}

class ViewController: UIViewController {
    var guess = ""
    //var word = "pony"
    var incorrectGuesses = 0
    var greg : [UIImage] = []
   var viewCount = 0
   

    var correct = [Int]()
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var guessOut: UILabel!
    
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var lossLable: UILabel!
    
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
    
  
    @IBOutlet weak var levelsOut: UIButton!
    
    @IBOutlet weak var winLoseOut: UILabel!
    @IBOutlet weak var reloadOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // AppData.gamesplayed+=1
        viewCount+=1
        AppData.currentLevel = defaults.integer(forKey: "theLevel")
        levelsOut.isEnabled = false
        if (AppData.gamesplayed > AppData.words.count/2){
            levelsOut.isEnabled = true
        }
        lossLable.text = "losses: \(AppData.gameslost)"
        winLabel.text = "wins: \(AppData.gamesplayed)"
        
        headOut.isHidden = true
        bodyOut.isHidden = true
        rightArmOut.isHidden = true
        leftArmOut.isHidden = true
        leftLegOut.isHidden = true
        rightLegOut.isHidden = true
        reloadOut.isHidden = true
        
        AppData.gameswon = defaults.integer(forKey:"thePlace")
        AppData.gamesplayed = defaults.integer(forKey: "theWins")
        AppData.gameslost = defaults.integer(forKey: "theLosses")
       
        for x in 0..<AppData.words[AppData.currentLevel][AppData.gameswon].count {
            guess+="_ "
           
            }
        guessOut.text = guess
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if viewCount<1{
            for x in 0..<AppData.words[AppData.currentLevel][AppData.gameswon].count {
                guess+="_ "
                
            }
            guessOut.text = guess
        }
        
    }
    func win(){
        if (guess == AppData.words[AppData.currentLevel][AppData.gameswon]){
            AppData.gameswon+=1
            winLoseOut.text = "you win!"
            reloadOut.isHidden = false
            AppData.gamesplayed+=1
            winLabel.text = "wins: \(AppData.gamesplayed)"
            defaults.set(AppData.gamesplayed, forKey: "theWins")
            disableButtons()
            if (AppData.gamesplayed > AppData.words.count/2){
                levelsOut.isEnabled = true
            }
           
            
        }
        
    }
    
    @IBAction func reloadAct(_ sender: UIButton) {
        guess=""
        if (AppData.gameswon == AppData.words[AppData.currentLevel].count){
            AppData.gameswon = 0
            AppData.gameslost = 0
            AppData.gamesplayed = 0
            defaults.set(AppData.gameswon, forKey: "thePlace")
            defaults.set(AppData.gamesplayed, forKey: "theWins")
            defaults.set(AppData.gameslost, forKey: "theLosses")
        }
        for x in 0..<AppData.words[AppData.currentLevel][AppData.gameswon].count {
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
        defaults.set(AppData.gameswon, forKey: "thePlace")
        
     
        
    }
    
    func disableButtons(){
        aOut.isEnabled = false
        bOut.isEnabled = false
        cOut.isEnabled = false
        dOut.isEnabled = false
        eOut.isEnabled = false
        fOut.isEnabled = false
        gOut.isEnabled = false
        hOut.isEnabled = false
        iOut.isEnabled = false
        jOut.isEnabled = false
        kOut.isEnabled = false
        lOut.isEnabled = false
        mOut.isEnabled = false
        nOut.isEnabled = false
        oOut.isEnabled = false
        pOut.isEnabled = false
        qOut.isEnabled = false
        rOut.isEnabled = false
        sOut.isEnabled = false
        tOut.isEnabled = false
        uOut.isEnabled = false
        vOut.isEnabled = false
        wOut.isEnabled = false
        xOut.isEnabled = false
        yOut.isEnabled = false
        zOut.isEnabled = false
    }
    
    
    
    func checkLetters(letter : Character){
        guess = ""
//
 var gotLetter = false
        var thisWord = AppData.words[AppData.currentLevel][AppData.gameswon]

     
        for x in 0..<thisWord.count{
            var help = AppData.words[AppData.currentLevel][AppData.gameswon].index(AppData.words[AppData.currentLevel][AppData.gameswon].startIndex , offsetBy: x)
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
            temp[c] = thisWord[AppData.words[AppData.currentLevel][AppData.gameswon].index(AppData.words[AppData.currentLevel][AppData.gameswon].startIndex , offsetBy: c)]
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
                guessOut.text = AppData.words[AppData.currentLevel][AppData.gameswon]
                guessOut.textColor = UIColor.red
                AppData.gameswon+=1
                winLoseOut.text = "you lose"
                disableButtons()
                reloadOut.isHidden = false
                AppData.gameslost+=1
                lossLable.text = "losses: \(AppData.gameslost)"
                defaults.set(AppData.gameslost, forKey: "theLosses")
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




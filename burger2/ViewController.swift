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
       
        headOut.isHidden = true
        bodyOut.isHidden = true
       
        
        
    }
    func plEASE() {
        
    }
    
    @IBAction func aAct(_ sender: UIButton) {
        var count = 0
        for x in 0..<word.count {
            var help = word.index(word.startIndex, offsetBy: x)
            if (word[help] == "a"){
                guess+="a"
                count+=1
            }
            else{
                guess+="_"
            }
        }
        guessOut.text = guess
        if (count<1){
            incorrectGuesses+=1
            headOut.isHidden = false
        
        }
        
    }
    
}


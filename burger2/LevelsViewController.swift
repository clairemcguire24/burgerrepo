//
//  LevelsViewController.swift
//  burger2
//
//  Created by CLAIRE MCGUIRE on 12/12/23.
//

import UIKit

class LevelsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
   
    var neededlevelpoints = [0,2,2,3,3]
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var collectionOut: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionOut.delegate = self
        collectionOut.dataSource = self
        
       
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AppData.words.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CazyCell
        cell.levelNameOut.text = AppData.words[indexPath.row][0]
        
        cell.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1.0)
       
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "error!", message: "must have \(neededlevelpoints[indexPath.row]) wins to move to this level", preferredStyle: .alert)
        let okcool = UIAlertAction(title: "ok", style: .default)
        alert.addAction(okcool)
        
        
        let selected = UIAlertController(title: "", message: "\(AppData.words[indexPath.row][0]) level selected", preferredStyle: .alert)
        let dubski = UIAlertAction(title: "ok", style: .default)
        selected.addAction(dubski)
        
        if(indexPath.row == 0){
            AppData.currentLevel = indexPath.row
            AppData.gamesplayed = 0
            AppData.gameswon = 0
            AppData.gameslost = 0
            defaults.set(AppData.currentLevel, forKey: "theLevel")
            present(selected, animated: true, completion: nil)
            defaults.set(AppData.gamesplayed, forKey: "theWins")
            defaults.set(AppData.gameswon, forKey: "thePlace")
            defaults.set(AppData.gameslost, forKey : "theLosses")

        }
        else if (AppData.gamesplayed>=2 && indexPath.row == 1){
            AppData.currentLevel = indexPath.row
            AppData.gamesplayed = 0
            AppData.gameswon = 0
            AppData.gameslost = 0
           defaults.set(AppData.currentLevel, forKey: "theLevel")
           present(selected, animated: true, completion: nil)
            defaults.set(AppData.gamesplayed, forKey: "theWins")
            defaults.set(AppData.gameswon, forKey: "thePlace")
            defaults.set(AppData.gameslost, forKey : "theLosses")
        }
        
        
       else if (AppData.gamesplayed>=2 && indexPath.row == 2){
            AppData.currentLevel = indexPath.row
            AppData.gamesplayed = 0
           AppData.gameswon = 0
           AppData.gameslost = 0
           defaults.set(AppData.currentLevel, forKey: "theLevel")
           present(selected, animated: true, completion: nil)
           defaults.set(AppData.gamesplayed, forKey: "theWins")
           defaults.set(AppData.gameswon, forKey: "thePlace")
           defaults.set(AppData.gameslost, forKey : "theLosses")

        }
      else if (AppData.gamesplayed>=3 && indexPath.row == 3){
            AppData.currentLevel = indexPath.row
            AppData.gamesplayed = 0
          AppData.gameswon = 0
          AppData.gameslost = 0
          defaults.set(AppData.currentLevel, forKey: "theLevel")
          present(selected, animated: true, completion: nil)
          defaults.set(AppData.gamesplayed, forKey: "theWins")
          defaults.set(AppData.gameswon, forKey: "thePlace")
          defaults.set(AppData.gameslost, forKey : "theLosses")

            }
        else if (AppData.gamesplayed>=3 && indexPath.row == 4){
            AppData.currentLevel = indexPath.row
            AppData.gamesplayed = 0
            AppData.gameswon = 0
            AppData.gameslost = 0
          defaults.set(AppData.currentLevel, forKey: "theLevel")
          present(selected, animated: true, completion: nil)
            defaults.set(AppData.gamesplayed, forKey: "theWins")
            defaults.set(AppData.gameswon, forKey: "thePlace")
            defaults.set(AppData.gameslost, forKey : "theLosses")
            
        }
        
        else {
            present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
}

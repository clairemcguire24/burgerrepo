//
//  LevelsViewController.swift
//  burger2
//
//  Created by CLAIRE MCGUIRE on 12/12/23.
//

import UIKit

class LevelsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
   
    
    @IBOutlet weak var collectionOut: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionOut.delegate = self
        collectionOut.dataSource = self
        print(AppData.words[AppData.currentLevel][0])
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
        if (AppData.gamesplayed>2 && indexPath.row == 1){
            AppData.currentLevel = indexPath.row
        }
        if (AppData.gamesplayed>5 && indexPath.row == 2){
            AppData.currentLevel = indexPath.row
            }
        
    }
    
    
}

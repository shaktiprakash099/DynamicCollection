//
//  NewViewController.swift
//  DynamicCollectionview
//
//  Created by GLB-312-PC on 04/01/18.
//  Copyright © 2018 GLB-312-PC. All rights reserved.
//

import UIKit


class NewViewController: UIViewController,UICollectionViewDataSource {
    
    @IBOutlet weak var newCollectionView: UICollectionView!
    
    var contentArray:NSArray = ["TechTravelTechTravelTechTechTravelTechTravelTechTechTravelTechTravelTechTechTravelTechTravelTech","Designs","Humor","Travel","Music","Writing","Social Media","Life","Education","Edtech","Education Reform","Photography","Startup","Poetry","Women In Tech","Female Founders","Business","Fitness","Fiction","Love","Food","Sports"]
    
  

    override func viewDidLoad() {
        super.viewDidLoad()

     newCollectionView.register(UINib.init(nibName: "newCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "newCollectionViewCell")
        
        if let flowLayout = newCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: 1,height: 1)
        }
        newCollectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
         return contentArray.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newCollectionViewCell", for: indexPath) as! newCollectionViewCell
        cell.testingLabel.text = contentArray[indexPath.row] as? String
         cell.backgroundColor = UIColor.init(colorLiteralRed: 247/255.0, green: 247/255.0, blue: 247/255.0, alpha: 1)
         return cell
        
       }
    
}

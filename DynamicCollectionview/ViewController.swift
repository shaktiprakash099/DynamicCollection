//
//  ViewController.swift
//  DynamicCollectionview
//
//  Created by GLB-312-PC on 12/12/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate{
    var selectedArray : NSMutableArray = []
    var contentArray:NSArray = ["","DesignsDesignsDesignsDesignsDesignsDesignsDesignsDesignsDesignsDesignsDesignsDesignsDesignsDesignsDesigns","Humor","Travel","Music","Writing","Social Media","LifePoetryPoetryPoetryPoetryPoetryPoetryPoetryPoetry","Education","Edtech","Education Reform","Photography","Startup","PoetryPoetryPoetryPoetryPoetryPoetryPoetryPoetryPoetry","Women In Tech","Female Founders","Business","Fitness","Fiction","Love","Food","","Sports"]
    
    @IBOutlet weak var mycollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tempArray :[String]  = (contentArray.flatMap{$0} as NSArray) as! [String]
        contentArray = tempArray.filter{ $0 != "" } as NSArray
//
        mycollectionView.delegate = self
        mycollectionView.dataSource = self
        
       if let flowLayout = mycollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
        flowLayout.estimatedItemSize = CGSize(width:1 , height:2)
       
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contentArray.count
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
//
//      let width = mycollectionView.frame.size.width/3
//        return CGSize(width: width-15, height: 50)
//   }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell", for: indexPath) as! CustomCollectionViewCell
         cell.configurecell()
   
        cell.layer.cornerRadius = 5;
        cell.titlelabel.text = contentArray.object(at: indexPath.row) as? String
        let selectedsting  = contentArray[indexPath.row] as? String
        
            if selectedArray.contains(selectedsting!){
                cell.backgroundColor = UIColor.init(colorLiteralRed: 90/255.0, green: 172/255.0, blue: 107/255.0, alpha: 1)
                cell.titlelabel.textColor = UIColor.white
                
            }
            else{
                cell.backgroundColor = UIColor.init(colorLiteralRed: 247/255.0, green: 247/255.0, blue: 247/255.0, alpha: 1)
                cell.titlelabel.textColor = UIColor.darkGray
            }
        cell.setNeedsLayout()
        cell.layoutIfNeeded()
            return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
   
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedsting  = contentArray[indexPath.row] as? String
        if selectedArray.count != 0 {
            
            if selectedArray.contains(selectedsting!){
                selectedArray.remove(selectedsting!)
            }
            else{
                selectedArray .add(selectedsting!)
            }
        }
        else{
              selectedArray .add(selectedsting!)
        }
        
        collectionView.reloadData()
    }
   
}


//
//  DetailViewController.swift
//  KLASS
//
//  Created by Vladimir Saprykin on 08.01.17.
//  Copyright © 2017 Vladimir Saprykin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let collectionArray = ["НОВОСТИ", "СУПЕМАРКЕТЫ КЛАСС", "РЕСТОРАН АМАТО", "РК АТМОСФЕРА", "КАФЕ ТЕРРИТОРИЯ ОТДЫХА", "МАГАЗИНЫ RUSH"]
    let imageCollection = ["banner-kafe", "klass1", "amato-1", "banner_atmosfera", "kafe", "rush"]
    let companyArray = [MenuArray]()
    let collView = CollViewCell()
    var menus: Menu! {
        didSet (newMenu) {
            self.refreshUI()
        }
    }
    
    func refreshUI() {
        nameLabel?.text = menus.textMenu()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.collectionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! CollViewCell
        //let menu = self.companyArray[indexPath.row]
        //cell.myLabel.text = menu.company()
        cell.myLabel.text = self.collectionArray[indexPath.row]
        cell.imageView.image = UIImage(named: self.imageCollection[indexPath.row])
        cell.backgroundColor = UIColor.gray
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 45)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            self.performSegue(withIdentifier: "news", sender: self)
        }
        print("You selected cell #\(indexPath.item)!")
    }

}

extension DetailViewController: MenuSelectionDelegate {
    func menuSelected(_ newMenu: Menu) {
        menus = newMenu
    }
}

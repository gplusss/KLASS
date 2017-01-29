//
//  MasterViewController.swift
//  KLASS
//
//  Created by Vladimir Saprykin on 08.01.17.
//  Copyright © 2017 Vladimir Saprykin. All rights reserved.
//

import UIKit
protocol MenuSelectionDelegate: class {
    func menuSelected(_ newMenu: Menu)
}

class MasterViewController: UITableViewController {
  
    var menus = [Menu]()
    weak var delegate: MenuSelectionDelegate?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.menus.append(Menu(name: .Company))
        self.menus.append(Menu(name: .Action))
        self.menus.append(Menu(name: .ForBuyer))
        self.menus.append(Menu(name: .Product))
        self.menus.append(Menu(name: .Vacantion))
        self.menus.append(Menu(name: .Contact))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "klass_logo")
        imageView.image = image
        navigationItem.titleView = imageView
        //title = "КЛАСС МАРКЕТ"
        self.tableView.rowHeight = 100.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menus.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let menu = self.menus[indexPath.row]
        cell.textLabel?.text = menu.textMenu()
        
        return cell
    }
    
      override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMenu = self.menus[indexPath.row]
        self.delegate?.menuSelected(selectedMenu)
        
        if let detailViewController = self.delegate as? DetailViewController {
            splitViewController?.showDetailViewController(detailViewController.navigationController!, sender: nil)
        }
    }    
}

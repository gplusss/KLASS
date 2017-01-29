//
//  Model.swift
//  KLASS
//
//  Created by Vladimir Saprykin on 08.01.17.
//  Copyright © 2017 Vladimir Saprykin. All rights reserved.
//

import UIKit

enum Icon {
    case Company, Action, ForBuyer, Product, Vacantion, Contact
}

class Menu {
    var name: Icon
   
    init(name: Icon) {
        self.name = name
        
    }
    
    func textMenu() -> String {
        
        switch self.name {
        case .Company: return "КОМПАНИЯ"
        case .Action: return "АКЦИИ"
        case .ForBuyer: return "ПОКУПАТЕЛЯМ"
        case .Product: return "ПРОДУКТЫ"
        case .Vacantion: return "ВАКАНСИИ"
        case .Contact: return "КОНТАКТЫ"
            
        }        
    }
}

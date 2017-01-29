//
//  ArrayModel.swift
//  KLASS
//
//  Created by Vladimir Saprykin on 16.01.17.
//  Copyright © 2017 Vladimir Saprykin. All rights reserved.
//

import UIKit

enum CompanyArray {
    case News, Market, Restaurant, Atmosphre, Cafe, Shop
}

class MenuArray {
    var companyArray: CompanyArray
    
    init(companyArray: CompanyArray) {
        self.companyArray = companyArray
        
    }
    
    func company() -> String {
        switch self.companyArray {
        case .News: return "НОВОСТИ"
        case .Market: return "СУПЕРМАРКЕТ КЛАСС"
        case .Restaurant: return "РЕСТОРАН"
        case .Atmosphre: return "РК АТМОСФЕРА"
        case .Cafe:  return "КАФЕ ТЕРРИТОРИЯ ОТДЫХА"
        case .Shop: return "МАГАЗИНЫ RUSH"
            
        }
    }
}

//
//  ShopHabbitsViewControllerType.swift
//  Motivation
//
//  Created by iMac on 17.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit

enum ShopHabbitsViewControllerType {
    
    case health, fitnes, home, hobbie, society, efficiency, improvement, creation
    
    var title: String {
        switch self {
        case .health:
            return "Здоровье"
        case .fitnes:
            return "Фитнес"
        case .home:
            return "Дом"
        case .hobbie:
            return "Увлечения"
        case .society:
            return "Общество"
        case .efficiency:
            return "Эффективность"
        case .improvement:
            return "Совершенствование"
        case .creation:
            return "Творчество"
        }
    }
        
}

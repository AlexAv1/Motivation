//
//  ShopModel.swift
//  Motivation
//
//  Created by iMac on 08.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class ShopModel: Object {
    
    @objc dynamic var nameLabel = ""
    @objc dynamic var id = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
    func setup(nameLabel:String, id: Int) {
        self.nameLabel = nameLabel
        self.id = id
    }
    
}

//
//  HabitsModel.swift
//  Motivation
//
//  Created by iMac on 15.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class HabitsModel: Object {
    
    @objc dynamic var nameLabel = ""
    @objc dynamic var countLabel = ""
    @objc dynamic var type = ""
    @objc dynamic var id = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func setup(nameLabel: String, countLabel: String, type: String, id: Int) {
        self.nameLabel = nameLabel
        self.countLabel = countLabel
        self.type = type
        self.id = id
    }
    
}

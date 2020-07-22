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
    @objc dynamic var id = 0
    
    func setup(nameLabel: String, countLabel: String, id: Int) {
        self.nameLabel = nameLabel
        self.countLabel = countLabel
        self.id = id
    }
    
}

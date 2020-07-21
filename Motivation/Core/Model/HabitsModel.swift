//
//  HabitsModel.swift
//  Motivation
//
//  Created by iMac on 15.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import Foundation
import UIKit

class HabitsModel {
    
    var nameLabel: String
    var countLabel: String
    var image: String
    
    init(nameLabel: String, countLabel: String, image: String) {
        self.nameLabel = nameLabel
        self.countLabel = countLabel
        self.image = image
    }
    
}

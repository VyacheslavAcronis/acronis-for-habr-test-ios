//
//  ThirdProperty.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

class ThirdProperty {
    var value: Float = 0.5
    var isHidden: Bool = false
}

// MARK: - Property

extension ThirdProperty: Property {
    var cellClass: UITableViewCell.Type {
        return ThirdTableViewCell.self
    }
}

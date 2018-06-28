//
//  FirstProperty.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

struct FirstProperty {
    let value = "Acronis GmbH"
    var isHidden: Bool = false
}

// MARK: - Property

extension FirstProperty: Property {
    var cellClass: UITableViewCell.Type {
        return FirstTableViewCell.self
    }
}

//
//  Property.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

/// Handles property to create a bridge between viewcontroller cell and its data
/// The implementation of property protocol contains data for the cell
protocol Property {
    var cellClass: UITableViewCell.Type { get }
    var cellIdentifier: String { get }
    var isHidden: Bool { get set }
}

extension Property {
    var cellIdentifier: String {
        return cellClass.typeName
    }
}

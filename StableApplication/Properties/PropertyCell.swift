//
//  PropertyCell.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

protocol PropertyCell: AnyObject where Self: UITableViewCell {
    func configure(using property: Property)
}

//
//  UITableViewCellExtension.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

extension UITableViewCell {
    static var typeName: String {
        let type = String(describing: self)
        return type
    }
}

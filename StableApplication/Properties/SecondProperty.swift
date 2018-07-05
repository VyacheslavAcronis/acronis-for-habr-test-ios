//
//  SecondProperty.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

class SecondProperty {
    var value = true
    var isHidden: Bool = false
}

// MARK: - Property

extension SecondProperty: Property {
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SecondTableViewCell
        cell.configure(using: self)
        return cell
    }
    
    var cellClass: UITableViewCell.Type {
        return SecondTableViewCell.self
    }
}


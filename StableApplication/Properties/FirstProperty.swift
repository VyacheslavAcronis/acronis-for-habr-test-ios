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
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! FirstTableViewCell
        cell.configure(using: self)
        return cell
    }
    
    var cellClass: UITableViewCell.Type {
        return FirstTableViewCell.self
    }
}

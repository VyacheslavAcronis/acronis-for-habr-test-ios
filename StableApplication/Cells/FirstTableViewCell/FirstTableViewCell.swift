//
//  FirstTableViewCell.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    @IBOutlet weak var valueLabel: UILabel!
}

// MARK: - PropertyCell

extension FirstTableViewCell: PropertyCell {
    func configure(using property: Property) {
        guard let firstProperty = property as? FirstProperty else {
            return
        }
        valueLabel.text = firstProperty.value
    }
}

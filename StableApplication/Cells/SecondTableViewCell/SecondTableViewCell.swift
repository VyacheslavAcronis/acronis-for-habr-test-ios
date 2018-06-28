//
//  SecondTableViewCell.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

protocol SecondPropertyTapHandler: class {
    func set(state: Bool, at indexPath: IndexPath)
}

class SecondTableViewCell: UITableViewCell {
    @IBOutlet weak var switchView: UISwitch!

    @IBAction func switcherValueChanged(_ sender: Any) {
        guard let indexPath = indexPath else {
            return
        }
        secondPropertyTapHandler?.set(state: switchView.isOn, at: indexPath)
    }
    weak var secondPropertyTapHandler: SecondPropertyTapHandler?
    var indexPath: IndexPath?
}

// MARK: - PropertyCell

extension SecondTableViewCell: PropertyCell {
    func configure(using property: Property) {
        guard let secondProperty = property as? SecondProperty else {
            return
        }
        switchView.isOn = secondProperty.value
    }
}

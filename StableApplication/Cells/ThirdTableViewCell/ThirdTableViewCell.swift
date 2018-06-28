//
//  ThirdTableViewCell.swift
//  stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {
    @IBOutlet weak var sliderView: UISlider!
}

// MARK: - PropertyCell

extension ThirdTableViewCell: PropertyCell {
    func configure(using property: Property) {
        guard let thirdProperty = property as? ThirdProperty else {
            return
        }
        sliderView.value = thirdProperty.value
    }
}

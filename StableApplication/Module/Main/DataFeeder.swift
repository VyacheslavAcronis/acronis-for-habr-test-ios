//
//  DataFeeder.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import Foundation

/// Resolves data for tableView and handles events
class DataFeeder {
    weak var tableReloader: TableReloader?
    var count: Int {
        return dataContainer.count
    }
    subscript(indexPath: IndexPath) -> Property? {
        let id = indexPath.row
        if id > dataContainer.count {
            return nil
        }
        return dataContainer[id]
    }
    var allEvenHiddenItems: [Property] {
        return dataContainer.allEvenHiddenItems
    }
    func set(state: Bool, at indexPath: IndexPath) {
        for case let secondProperty as SecondProperty in dataContainer.allEvenHiddenItems {
            secondProperty.value = state
        }
        for case let thirdProperty as ThirdProperty in dataContainer.allEvenHiddenItems {
            thirdProperty.isHidden = !state
        }
        dataContainer.calculateVisibleElements()
        tableReloader?.reloadTable()
    }
    private var dataContainer: Properties = ApplicationProperties([FirstProperty(), SecondProperty(), ThirdProperty()])
}


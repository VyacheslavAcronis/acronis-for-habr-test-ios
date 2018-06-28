//
//  Properties.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

protocol Properties {
    subscript(id: Int) -> Property? { get }
    var count: Int { get }
    var isEmpty: Bool { get }
    var allEvenHiddenItems: [Property] { get }
    mutating func calculateVisibleElements()
}

struct ApplicationProperties {

    // MARK: - Initialization

    init(_ array: [Property]) {
        self.array = array
        calculateVisibleElements()
    }

    // MARK: - Private

    /// All elements
    private var array: [Property] = []
    /// Only visible elements which are shown in the tableView
    private var visibleElements: [Property] = []
}

extension ApplicationProperties: Properties {
    subscript(id: Int) -> Property? {
        if id > visibleElements.count {
            return nil
        }
        return visibleElements[id]
    }
    var count: Int {
        return visibleElements.count
    }
    var isEmpty: Bool {
        return count == 0
    }
    var allEvenHiddenItems: [Property] {
        return array
    }
    mutating func calculateVisibleElements() {
        visibleElements = array.filter { !$0.isHidden }
    }
}

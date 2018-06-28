//
//  TableFlow.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 28.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

protocol TableReloader: class {
    func reloadTable()
}

/// This class handles the tableView
class TableFlow: NSObject {
    weak var weakTableView: UITableView?
    var dataFeeder = DataFeeder()

    override init() {
        super.init()
        dataFeeder.tableReloader = self
    }

    func load(for tableView: UITableView) {
        weakTableView = tableView
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200

        dataFeeder.allEvenHiddenItems.forEach { property in
            let identifier = property.cellIdentifier
            let nib = UINib(nibName: identifier, bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: identifier)
        }
    }
}

extension TableFlow: TableReloader {
    func reloadTable() {
        weakTableView?.reloadData()
    }
}

extension TableFlow: SecondPropertyTapHandler {
    func set(state: Bool, at indexPath: IndexPath) {
        dataFeeder.set(state: state, at: indexPath)
    }
}

extension TableFlow: UITableViewDelegate { }

extension TableFlow: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataFeeder.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let property = dataFeeder[indexPath] else {
            return UITableViewCell()
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: property.cellIdentifier, for: indexPath)
        cell.selectionStyle = .none
        guard let propertyCell = cell as? PropertyCell else {
            return cell
        }
        propertyCell.configure(using: property)

        switch propertyCell {
        case let secondTableViewCell as SecondTableViewCell:
            secondTableViewCell.secondPropertyTapHandler = self
            secondTableViewCell.indexPath = indexPath
        default:
            break
        }
        return cell
    }

}

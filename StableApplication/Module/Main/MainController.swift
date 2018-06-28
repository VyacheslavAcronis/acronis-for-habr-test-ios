//
//  ViewController.swift
//  Stable application
//
//  Created by Vyacheslav Petrukhin on 27.06.2018.
//  Copyright © 2018 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var tableFlow: TableFlow?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }

    private func setupTable() {
        tableFlow = TableFlow()
        tableFlow?.load(for: tableView)
    }
}

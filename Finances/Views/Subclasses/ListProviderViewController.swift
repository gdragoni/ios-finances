//
//  ListProviderViewController.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 03/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import UIKit

class ListProviderViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var arProvider: [TableViewCellProviderProtocol]! = []
}

extension ListProviderViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arProvider.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return arProvider[indexPath.row].tableView(tableView: tableView, cellForRowAt: indexPath)
    }
}

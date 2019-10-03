//
//  CellProviderProtocols.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 03/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import UIKit

protocol TableViewCellProviderProtocol: class {
    func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
}

protocol CollectionViewCellProviderProtocol: class {
    func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
}

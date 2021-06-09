//
//  TableViewCellProtocol.swift
//  PhotoApp
//
//  Created by Kamila on 08.06.2021.
//

import UIKit

protocol TableViewCellProtocol: UITableViewCell { }

extension TableViewCellProtocol {
    static var identifier: String {
        return String(describing: self)
    }
}

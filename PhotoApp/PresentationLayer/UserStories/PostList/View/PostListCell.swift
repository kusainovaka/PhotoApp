//
//  PostListCell.swift
//  PhotoApp
//
//  Created by Kamila on 08.06.2021.
//

import UIKit

class PostListCell: UITableViewCell, TableViewCellProtocol {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

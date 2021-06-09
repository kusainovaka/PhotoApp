//
//  PostListPage.swift
//  PhotoApp
//
//  Created by Kamila on 08.06.2021.
//

import UIKit
import SnapKit

class PostListPage: UIViewController {
    
    private let viewModel: PostListViewModel
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PostListCell.self, forCellReuseIdentifier: PostListCell.identifier)
        return tableView
    }()
    
    init(viewModel: PostListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        layoutUI()
    }
}

private extension PostListPage {
    func layoutUI() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
}

extension PostListPage: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PostListCell.identifier, for: indexPath) as? PostListCell else {
            return .init()
        }
        
        return cell
    }
}

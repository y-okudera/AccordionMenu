//
//  ViewController.swift
//  AccordionMenu
//
//  Created by YukiOkudera on 2018/07/15.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private let contentsProvider = ContentsProvider()

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        tableView.tableFooterView = UIView(frame: .zero)
        addContents()
        tableView.dataSource = self
        tableView.delegate = self
    }

    private func addContents() {

        contentsProvider.addContent(content: AccordionCellContents(title: "[0]コンテンツ無し"))
        contentsProvider.addContent(content: AccordionCellContents(title: "[1]コンテンツ有り", contents: UIImage(named: "image01")))
        contentsProvider.addContent(content: AccordionCellContents(title: "[2]コンテンツ有り", contents: UIImage(named: "image01")))
        contentsProvider.addContent(content: AccordionCellContents(title: "[3]コンテンツ有り", contents: UIImage(named: "image01")))
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentsProvider.rowCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AccordionCell.instance()
        cell.titleLabel.text = contentsProvider.cellTitle(indexPath: indexPath)
        cell.accordionImageView.image = contentsProvider.cellImage(indexPath: indexPath)
        cell.accordionImageView.isHidden = contentsProvider.isHidden(indexPath: indexPath)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if contentsProvider.changeTheHiddenStatus(indexPath: indexPath) == nil {
            return
        }

        // update selected cell.
        tableView.reloadRows(at: [indexPath], with: contentsProvider.currentAnimation)
    }
}

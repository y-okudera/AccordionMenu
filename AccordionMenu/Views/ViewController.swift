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

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        tableView.tableFooterView = UIView(frame: .zero)
        addSectionContents()
        tableView.dataSource = self
        tableView.delegate = self
    }

    private func addSectionContents() {
        contentsProvider.addSectionContent(content: SectionContents(categoryTitle: "0", contentsTitles: []))
        contentsProvider.addSectionContent(content: SectionContents(categoryTitle: "1", contentsTitles: ["1-1"]))
        contentsProvider.addSectionContent(content: SectionContents(categoryTitle: "2", contentsTitles: ["2-1", "2-2"]))
        contentsProvider.addSectionContent(content: SectionContents(categoryTitle: "3", contentsTitles: ["3-1", "3-2", "3-3"]))
        contentsProvider.addSectionContent(content: SectionContents(categoryTitle: "4", contentsTitles: ["4-1", "4-2", "4-3", "4-4"]))
        contentsProvider.addSectionContent(content: SectionContents(categoryTitle: "5", contentsTitles: ["5-1", "5-2", "5-3", "5-4", "5-5"]))
    }

    @objc func toggleCategoryHeader(gestureRecognizer: UITapGestureRecognizer) {
        guard let header = gestureRecognizer.view as? SectionHeaderView else { return }
        contentsProvider.changeTheOpeningStatus(section: header.section)
        tableView.beginUpdates()
        tableView.reloadSections([header.section], with: contentsProvider.currentAnimation)
        tableView.endUpdates()
    }
}

extension ViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return contentsProvider.sectionCount()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentsProvider.rowCount(section: section)
    }

    func cellTitleForRowAtIndexPath(_ indexPath: IndexPath) -> String? {
        return contentsProvider.cellTitle(indexPath: indexPath)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = cellTitleForRowAtIndexPath(indexPath)
        return cell
    }
}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let header = SectionHeaderView.instance()
        header.setTitle(title: contentsProvider.categoryTitle(section: section))
        header.section = section
        header.addGestureRecognizer(UITapGestureRecognizer(
            target: self,
            action: #selector(ViewController.toggleCategoryHeader(gestureRecognizer:))
        ))

        if contentsProvider.rowCount(section: section) == 0 {
            header.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        }

        if contentsProvider.isOpening(section: section) {
            header.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }

        return header
    }
}

//
//  ContentsProvider.swift
//  AccordionMenu
//
//  Created by YukiOkudera on 2018/07/15.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import UIKit

final class ContentsProvider {

    private var sectionContents = [SectionContents]()
    let currentAnimation = UITableView.RowAnimation.fade

    func addSectionContent(content: SectionContents) {
        sectionContents.append(content)
    }

    func sectionCount() -> Int {
        return sectionContents.count
    }

    func rowCount(section: Int) -> Int {
        if sectionContents.isEmpty {
            return 0
        }
        // 開いているセクションだったらcontents分の個数を返す
        if sectionContents[section].isOpening {
            return sectionContents[section].contentsTitles?.count ?? 0
        }
        // 開いてないセクションだったら0
        return 0
    }

    func categoryTitle(section: Int) -> String? {
        if sectionContents.isEmpty {
            return nil
        }
        return sectionContents[section].categoryTitle
    }

    func cellTitle(indexPath: IndexPath) -> String? {
        if sectionContents.isEmpty {
            return nil
        }
        if let contentsTitles = sectionContents[indexPath.section].contentsTitles {
            return contentsTitles[indexPath.row]
        }
        return nil
    }

    func isOpening(section: Int) -> Bool {
        if sectionContents.isEmpty {
            return false
        }
        return sectionContents[section].isOpening
    }

    func changeTheOpeningStatus(section: Int) {
        if sectionContents.isEmpty {
            return
        }
        let isOpen = sectionContents[section].isOpening
        sectionContents[section].isOpening = !isOpen
    }
}

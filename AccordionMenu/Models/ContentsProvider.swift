//
//  ContentsProvider.swift
//  AccordionMenu
//
//  Created by YukiOkudera on 2018/07/15.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import UIKit

final class ContentsProvider {

    private var accordionCellContents = [AccordionCellContents]()
    let currentAnimation: UITableView.RowAnimation

    init(currentAnimation: UITableView.RowAnimation = .fade) {
        self.currentAnimation = currentAnimation
    }

    func addContent(content: AccordionCellContents) {
        accordionCellContents.append(content)
    }

    func rowCount() -> Int {
        return accordionCellContents.count
    }

    func cellTitle(indexPath: IndexPath) -> String? {
        if accordionCellContents.isEmpty {
            return nil
        }
        return accordionCellContents[indexPath.row].title
    }
    
    func cellImage(indexPath: IndexPath) -> UIImage? {
        if accordionCellContents.isEmpty {
            return nil
        }
        return accordionCellContents[indexPath.row].contents
    }

    func isHidden(indexPath: IndexPath) -> Bool {
        if accordionCellContents.isEmpty {
            return false
        }
        return accordionCellContents[indexPath.row].isHidden
    }

    func changeTheHiddenStatus(indexPath: IndexPath) -> Bool? {

        if accordionCellContents[indexPath.row].contents == nil {
            return nil
        }
        let currentStatus = accordionCellContents[indexPath.row].isHidden
        accordionCellContents[indexPath.row].isHidden = !currentStatus

        return accordionCellContents[indexPath.row].isHidden
    }
}

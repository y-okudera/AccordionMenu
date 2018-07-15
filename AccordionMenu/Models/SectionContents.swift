//
//  SectionContents.swift
//  AccordionMenu
//
//  Created by YukiOkudera on 2018/07/15.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import Foundation

struct SectionContents {

    var categoryTitle: String?
    var isOpening: Bool = false
    var contentsTitles: [String]?

    init(categoryTitle: String? = nil, isOpening: Bool = false, contentsTitles: [String]? = nil) {
        self.categoryTitle = categoryTitle
        self.isOpening = isOpening
        self.contentsTitles = contentsTitles
    }
}

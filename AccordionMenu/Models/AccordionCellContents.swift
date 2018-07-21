//
//  AccordionCellContents.swift
//  AccordionMenu
//
//  Created by YukiOkudera on 2018/07/21.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import UIKit

struct AccordionCellContents {

    var title: String?
    var isHidden: Bool
    var contents: UIImage?

    init(title: String? = nil, isHidden: Bool = true, contents: UIImage? = nil) {
        self.title = title
        self.isHidden = isHidden
        self.contents = contents
    }
}

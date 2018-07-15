//
//  SectionHeaderView.swift
//  AccordionMenu
//
//  Created by YukiOkudera on 2018/07/15.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import UIKit

final class SectionHeaderView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    var section: Int = 0

    class func instance() -> SectionHeaderView {
        let nib = UINib(nibName: "SectionHeaderView", bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? SectionHeaderView else {
            fatalError()
        }
        return view
    }

    func setTitle(title: String?) {
        titleLabel.text = title
    }
}

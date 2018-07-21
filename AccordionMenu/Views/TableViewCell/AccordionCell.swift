//
//  AccordionCell.swift
//  AccordionMenu
//
//  Created by YukiOkudera on 2018/07/21.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import UIKit

final class AccordionCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var accordionImageView: UIImageView!
}

// MARK: - NibInstantiatable
extension AccordionCell: NibInstantiatable {}

//
//  Instantiatable.swift
//  AccordionMenu
//
//  Created by YukiOkudera on 2018/07/21.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import UIKit

protocol NibInstantiatable where Self: UITableViewCell {
    typealias InstanceType = Self
    static var identifier: String { get }
    static var nibName: String { get }
    static func instance(bundle: Bundle?) -> InstanceType
}

extension NibInstantiatable {

    static var identifier: String {
        get {
            return String(describing: self)
        }
    }

    static var nibName: String {
        get {
            return String(describing: self)
        }
    }

    static func instance(bundle: Bundle? = nil) -> InstanceType {
        let nib = UINib(nibName: nibName, bundle: bundle)
        guard let instance = nib.instantiate(withOwner: self, options: nil).first as? InstanceType else {
            fatalError("The nib can not instantiate.")
        }
        return instance
    }
}

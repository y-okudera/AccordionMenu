//
//  AccordionMenuUITests.swift
//  AccordionMenuUITests
//
//  Created by YukiOkudera on 2018/07/15.
//  Copyright © 2018年 YukiOkudera. All rights reserved.
//

import XCTest

final class AccordionMenuUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    func testAccordionMenu() {

        let tablesQuery = XCUIApplication().tables
        let staticText = tablesQuery.staticTexts["[0]コンテンツ無し"]
        staticText.tap()

        let staticText2 = tablesQuery.staticTexts["[1]コンテンツ有り"]
        staticText2.tap()

        let staticText3 = tablesQuery.staticTexts["[2]コンテンツ有り"]
        staticText3.tap()

        let staticText4 = tablesQuery.staticTexts["[3]コンテンツ有り"]
        staticText4.tap()

        staticText2.tap()
        staticText3.tap()
        staticText4.tap()
    }
}

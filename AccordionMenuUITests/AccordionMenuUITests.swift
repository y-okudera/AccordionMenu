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
        let staticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["0"]/*[[".otherElements[\"0\"].staticTexts[\"0\"]",".staticTexts[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText.tap()
        staticText.tap()

        let staticText2 = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["1"]/*[[".otherElements[\"1\"].staticTexts[\"1\"]",".staticTexts[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText2.tap()
        staticText2.tap()

        let staticText3 = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["2"]/*[[".otherElements[\"2\"].staticTexts[\"2\"]",".staticTexts[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText3.tap()
        staticText3.tap()

        let staticText4 = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["3"]/*[[".otherElements[\"3\"].staticTexts[\"3\"]",".staticTexts[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText4.tap()
        staticText4.tap()

        let staticText5 = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["4"]/*[[".otherElements[\"4\"].staticTexts[\"4\"]",".staticTexts[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText5.tap()
        staticText5.tap()

        let staticText6 = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["5"]/*[[".otherElements[\"5\"].staticTexts[\"5\"]",".staticTexts[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText6.tap()
        staticText6.tap()
        staticText6.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["5-5"]/*[[".cells.staticTexts[\"5-5\"]",".staticTexts[\"5-5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}

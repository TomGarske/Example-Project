//
//  Example_ProjectUITests.swift
//  Example ProjectUITests
//
//  Created by Thomas Garske on 11/11/16.
//  Copyright © 2016 csci4211. All rights reserved.
//

import XCTest

class Example_ProjectUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.


        let app = XCUIApplication()

        //CHECK DEFAULT
        app.buttons["Next View Controller"].tap()
        XCTAssert(app.staticTexts["This is a label!"].exists)
        app.buttons["Dismiss"].tap()

        //CHECK CHANGES
        app.buttons["Say Hello!"].tap()
        XCTAssert(app.staticTexts["Hello World!"].exists)
        app.buttons["Next View Controller"].tap()
        XCTAssert(app.staticTexts["Hello World!"].exists)
    }
    
}

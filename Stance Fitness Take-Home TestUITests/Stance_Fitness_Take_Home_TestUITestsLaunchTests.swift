//
//  Stance_Fitness_Take_Home_TestUITestsLaunchTests.swift
//  Stance Fitness Take-Home TestUITests
//
//  Created by wyn on 2024/8/20.
//

import XCTest

final class Stance_Fitness_Take_Home_TestUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

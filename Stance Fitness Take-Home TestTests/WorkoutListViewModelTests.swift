//
//  WorkoutListViewModelTests.swift
//  Stance Fitness Take-Home TestTests
//
//  Created by wyn on 2024/8/20.
//

import XCTest
@testable import Stance_Fitness_Take_Home_Test

final class WorkoutListViewModelTests: XCTestCase {
    func testGetAllWorkoutData_Success_withoutError() async {
        // give
        let mockWorkoutRepository = MockWorkoutRepository()
        let viewModel = WorkoutListViewModel(workoutRepository: mockWorkoutRepository)
        mockWorkoutRepository.workoutSets = [.stubs()]
        let expectation = XCTestExpectation(description: "Data should be loaded")
        mockWorkoutRepository.expectation = expectation

        // when
        await viewModel.getAllWorkoutData()
        await fulfillment(of: [expectation], timeout: 1)

        // then
        XCTAssertFalse(viewModel.isLoading)
        XCTAssertNil(viewModel.errorItem)
        XCTAssertEqual(viewModel.workoutSets.count, 1)
    }
}

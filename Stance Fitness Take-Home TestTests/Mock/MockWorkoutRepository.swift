//
//  MockWorkoutRepository.swift
//  Stance Fitness Take-Home TestTests
//
//  Created by wyn on 2024/8/20.
//

@testable import Stance_Fitness_Take_Home_Test
import XCTest

final class MockWorkoutRepository: WorkoutRepository {
    var workoutSets = [WorkoutSet]()
    var expectation: XCTestExpectation?
    var error: Error?
    
    func getWorkoutData() async throws -> [WorkoutSet] {
        if let error {
            throw error
        }
        expectation?.fulfill()
        return workoutSets
    }
}

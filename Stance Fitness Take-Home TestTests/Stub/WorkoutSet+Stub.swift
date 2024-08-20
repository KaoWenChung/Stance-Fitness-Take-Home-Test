//
//  WorkoutSet+Stub.swift
//  Stance Fitness Take-Home TestTests
//
//  Created by wyn on 2024/8/20.
//

@testable import Stance_Fitness_Take_Home_Test

extension WorkoutSet {
    static func stubs(_ reps: [RepData] = [RepData(speed: 0.1, intensity: 0.1)]) -> Self {
        .init(reps: reps)
    }
}

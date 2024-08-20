//
//  WorkoutService.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

import Foundation
import Alamofire

struct WorkoutDataResponse: Decodable {
    let sets: [WorkoutSet]
}

struct WorkoutSet: Decodable {
    let reps: [RepData]
}

struct RepData: Decodable {
    let speed: Double
    let intensity: Double
}

protocol WorkoutService {
    func getWorkoutData() async throws -> [WorkoutSet]
}

final class WorkoutAFServiceImpl: WorkoutService {
    func getWorkoutData() async throws -> [WorkoutSet] {
        let url = "https://run.mocky.io/v3/541fe76b-7ff1-48cf-90a3-bb145a300d6d"

        let response = try await AF.request(url)
            .serializingDecodable(WorkoutDataResponse.self).value

        return response.sets
    }
}

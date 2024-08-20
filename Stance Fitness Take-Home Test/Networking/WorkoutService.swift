//
//  WorkoutService.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

import Foundation
import Alamofire

protocol WorkoutService {
    func getWorkoutData() async throws -> [WorkoutDTO.WorkoutSetDTO]
}

final class WorkoutAFServiceImpl: WorkoutService {
    func getWorkoutData() async throws -> [WorkoutDTO.WorkoutSetDTO] {
        let url = "https://run.mocky.io/v3/541fe76b-7ff1-48cf-90a3-bb145a300d6d"

        let response = try await AF.request(url)
            .serializingDecodable(WorkoutDTO.self).value

        return response.sets
    }
}

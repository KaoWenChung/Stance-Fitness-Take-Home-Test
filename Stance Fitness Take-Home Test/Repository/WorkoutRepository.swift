//
//  WorkoutRepository.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

protocol WorkoutRepository {
    func getWorkoutData() async throws -> [WorkoutSet]
}

final class WorkoutRepositoryImpl {
    let apiService: WorkoutService
    init(apiService: WorkoutService = WorkoutAFServiceImpl()) {
        self.apiService = apiService
    }
}

extension WorkoutRepositoryImpl: WorkoutRepository {
    func getWorkoutData() async throws -> [WorkoutSet] {
        try await apiService.getWorkoutData().map { $0.toDomain() }
    }
}

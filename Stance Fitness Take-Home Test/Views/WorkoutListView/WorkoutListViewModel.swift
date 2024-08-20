//
//  WorkoutListViewModel.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

import Foundation

@Observable
final class WorkoutListViewModel {
    private let workoutRepository: WorkoutRepository
    private(set) var workoutSets = [WorkoutSet]()
    private(set) var isLoading = false
    var errorItem: ErrorItem?

    init(workoutRepository: WorkoutRepository = WorkoutRepositoryImpl()) {
        self.workoutRepository = workoutRepository
    }

    func getAllWorkoutData() async {
        isLoading = true
        defer { isLoading = false }
        do {
            workoutSets = try await workoutRepository.getWorkoutData()
            errorItem = nil
        } catch {
            errorItem = .init(message:"Oops! Something went wrong: \(error.localizedDescription)")
        }
    }
}

//
//  WorkoutListViewModel.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

import Foundation

@Observable
final class WorkoutListViewModel {
    private let workoutService: WorkoutService
    private(set) var workoutSets = [WorkoutSet]()
    private(set) var isLoading = false
    var errorItem: ErrorItem?

    init(workoutService: WorkoutService = WorkoutAFServiceImpl()) {
        self.workoutService = workoutService
    }

    func getAllWorkoutData() async {
        isLoading = true
        defer { isLoading = false }
        do {
            workoutSets = try await workoutService.getWorkoutData()
            errorItem = nil
        } catch {
            errorItem = .init(message:"Oops! Something went wrong: \(error.localizedDescription)")
        }
    }
}

struct ErrorItem: Identifiable {
    let id = UUID()
    let message: String
}

//
//  ContentView.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

import SwiftUI

struct ContentView: View {
    @State private var workoutSets: [WorkoutSet] = []
    
    var body: some View {
        NavigationView {
            List(workoutSets.indices, id: \.self) { index in
                Section(header: Text("Set \(index + 1)")) {
                    Text("??")
                }
            }
            .navigationTitle("Workout Sessions")
            .task {
                do {
                    workoutSets = try await WorkoutAFServiceImpl().getWorkoutData()
                } catch {
                    print("Failed to load data: \(error)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

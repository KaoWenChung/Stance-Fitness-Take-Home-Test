//
//  ContentView.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

import SwiftUI

struct WorkoutListView: View {
    @State var viewModel = WorkoutListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.workoutSets.indices, id: \.self) { index in
                    Section(header: Text("Set \(index + 1)")) {
                        Text("??")
                    }
                }
                .navigationTitle("Workout Sessions")
                .task {
                    await viewModel.getAllWorkoutData()
                }
                .alert(item: $viewModel.errorItem) { error in
                    Alert(
                        title: Text("Error"),
                        message: Text(error.message),
                        dismissButton: .default(Text("OK")) {
                            viewModel.errorItem = nil
                        }
                    )
                }
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
    }
}

#Preview {
    WorkoutListView()
}

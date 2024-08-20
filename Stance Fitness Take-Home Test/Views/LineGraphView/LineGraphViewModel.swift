//
//  LineGraphViewModel.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

import Foundation

@Observable
final class LineGraphViewModel {
    let reps: [RepData]
    init(reps: [RepData]) {
        self.reps = reps
    }
}

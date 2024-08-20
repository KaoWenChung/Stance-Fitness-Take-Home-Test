//
//  LineGraphView.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

import SwiftUI
import Charts

struct LineGraphView: View {
    let viewModel: LineGraphViewModel
    
    var body: some View {
        Chart {
            ForEach(viewModel.reps.indices, id: \.self) { index in
                LineMark(x: .value("Rep", index + 1),
                         y: .value("Speed", viewModel.reps[index].speed)
                )
            }
        }
        .chartYAxisLabel("Speed")
        .chartXAxisLabel("Rep")
    }
}

#Preview {
    LineGraphView(viewModel: .init(reps: [RepData(speed: 0.35, intensity: 0.6),
                                          RepData(speed: 0.45, intensity: 0.4),
                                          RepData(speed: 0.25, intensity: 0.2)]))
}

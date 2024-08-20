//
//  WorkoutDTO.swift
//  Stance Fitness Take-Home Test
//
//  Created by wyn on 2024/8/20.
//

struct WorkoutDTO: Decodable {
    struct WorkoutSetDTO: Decodable {
        struct RepDataDTO: Decodable {
            let speed: Double
            let intensity: Double
        }
        let reps: [RepDataDTO]
    }
    let sets: [WorkoutSetDTO]
}

// MARK: - Mappings to Domain

extension WorkoutDTO.WorkoutSetDTO {
    func toDomain() -> WorkoutSet {
        .init(reps: reps.map { $0.toDomain() })
    }
}

extension WorkoutDTO.WorkoutSetDTO.RepDataDTO {
    func toDomain() -> RepData {
        .init(speed: speed, intensity: intensity)
    }
}

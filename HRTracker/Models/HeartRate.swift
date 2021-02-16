//
//  HeartRate.swift
//  HRTracker
//
//  Created by Sean Conrad on 1/25/21.
//

import Foundation
import Combine

//class HeartRatesStore: ObservableObject {
//    @Published var currentHeartRateInfo = HeartRates(start: TimeInterval(), recordedHeartRates: [ 60, 61, 63, 62 ] )
//}

class SimpleHeartRatesStore: ObservableObject {
    @Published var currentHeartRateInfo = String()
    var currentHeartRateIndex: Int = 0
    var simpleHeartRates = SimpleHeartRates(rates: [60, 58, 54, 58, 62, 63, 64, 65, 68, 63, 60])
    
//    let timer = Timer.publish(every: 1, on: .main, in: .common)
//        .autoconnect()
//        .
    
    init () {
        let _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }


    @objc
    func fireTimer() {
        nextHeartRate()
    }
    
    func nextHeartRate() {
        currentHeartRateIndex += 1
        if (currentHeartRateIndex > simpleHeartRates.rates.count - 1) { currentHeartRateIndex = 0 }
        currentHeartRateInfo = String(simpleHeartRates.rates[currentHeartRateIndex])
    }
}


struct SimpleHeartRates {
    var rates: [Int]
}

struct HeartRates {
    let start: TimeInterval
    var recordedHeartRates: [Int16]
}

struct HeartRate {
    /// timeIndex is a time stamp which also serves as the index
    let timeIndex: TimeInterval
    let heartRate: Int16
}

/// What's more expensive:
/// TimeInterval
/// TimeInterval - Epoch time
/// Int64 - Epoch time
/// DateComponents

//struct HeartRates - V2 {
//    let start: TimeInterval
//    var recordedHeartRates: [HeartRate]
//
//    // Round up?
//    var averageHeartRate: Int8
//    var minHeartRate: Int8
//    var maxHeartRate: Int8
//    var standardDeviation: Int8
//    var totalRecordedHeartRates: Int
//}

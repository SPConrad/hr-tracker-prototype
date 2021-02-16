//
//  ContentView.swift
//  HRTracker
//
//  Created by Sean Conrad on 12/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var heartRate: String = "57"
    @EnvironmentObject var currentHeartRate: SimpleHeartRatesStore
    
    
    var body: some View {
        Text(currentHeartRate.currentHeartRateInfo)
            .padding()
        //HRView(heartRate: currentHeartRate)
    }
}

struct HRView: View {
    @Binding var heartRate: Int
    var body: some View {
        Text("\(heartRate)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SimpleHeartRatesStore())
    }
}

//
//  ContentView.swift
//  IEUK-Task
//
//  Created by Shraddha on 29/06/23.
//

import SwiftUI
import CoreData

import SwiftUI

struct ContentView: View {
    @State private var electricityUsage: Double = 0
    @State private var gasUsage: Double = 0
    @State private var carMileage: Double = 0
    @State private var carbonFootprint: Double = 0
    
    var body: some View {
        Form {
            Section(header: Text("Electricity Usage (kWh)")) {
                TextField("Enter electricity usage", value: $electricityUsage, formatter: NumberFormatter())
            }
            
            Section(header: Text("Gas Usage (Therms)")) {
                TextField("Enter gas usage", value: $gasUsage, formatter: NumberFormatter())
            }
            
            Section(header: Text("Car Mileage (Miles)")) {
                TextField("Enter car mileage", value: $carMileage, formatter: NumberFormatter())
            }
            
            Section(header: Text("Carbon Footprint")) {
                Text("Your carbon footprint: \(carbonFootprint, specifier: "%.2f") kg CO2e")
            }
        }
        .onChange(of: electricityUsage) { _ in
            calculateCarbonFootprint()
        }
        .onChange(of: gasUsage) { _ in
            calculateCarbonFootprint()
        }
        .onChange(of: carMileage) { _ in
            calculateCarbonFootprint()
        }
    }
    
    func calculateCarbonFootprint() {
        // Perform calculations to calculate the carbon footprint
        let electricityEmissions = electricityUsage * 0.5 // Example emission factor for electricity usage
        let gasEmissions = gasUsage * 5 // Example emission factor for gas usage
        let carEmissions = carMileage * 0.2 // Example emission factor for car mileage
        
        carbonFootprint = electricityEmissions + gasEmissions + carEmissions
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

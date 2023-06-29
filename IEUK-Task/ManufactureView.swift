//
//  ManufactureView.swift
//  IEUK-Task
//
//  Created by Shraddha on 29/06/23.
//

import SwiftUI

import SwiftUI

struct Manufacturer: Identifiable {
    let id = UUID()
    let name: String
    let emission: Double
}

struct ManufacturerView: View {
    let manufacturers = [
        Manufacturer(name: "Manufacturer A", emission: 120),
        Manufacturer(name: "Manufacturer B", emission: 80),
        Manufacturer(name: "Manufacturer C", emission: 150),
        Manufacturer(name: "Manufacturer D", emission: 200),
        Manufacturer(name: "Manufacturer E", emission: 90)
    ]
    
    var body: some View {
        List(manufacturers) { manufacturer in
            HStack {
                Text(manufacturer.name)
                
                Spacer()
                
                Text("\(manufacturer.emission) kg CO2e")
                    .foregroundColor(emissionColor(emission: manufacturer.emission))
            }
        }
    }
    
    func emissionColor(emission: Double) -> Color {
        if emission >= 150 {
            return .red
        } else if emission >= 100 {
            return .orange
        } else {
            return .green
        }
    }
}


struct ManufactureView_Previews: PreviewProvider {
    static var previews: some View {
        ManufacturerView()
    }
}

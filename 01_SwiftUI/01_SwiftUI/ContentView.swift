//
//  ContentView.swift
//  01_SwiftUI
//
//  Created by money on 2023/10/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var weightText: String = ""
    @State private var heightText: String = ""
    @State private var bmi: Double = 0
    @State private var classification: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("BMI Calculator:").foregroundColor(.black).font(Font.system(size: 20))
//                .foregroundColor(.red)
            TextField("Enter Weight (in kilograms)", text: $weightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(.black)
                .frame(width: 300)
            
            
            TextField("nter Height (in meters)", text: $heightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(.black)
                .frame(width: 300)
            
            Button {
                print("Calculate BMI")
                
                let weight = Double(self.weightText) ?? 0
                let height = Double(self.heightText) ?? 1
                self.bmi = weight/(height * height)
                
                print("bmi = \(bmi)")

                
                if self.bmi < 18.5 {
                    self.classification = "Underweight"
                } else if self.bmi < 24.9 {
                    self.classification = "Healthy weight"
                } else if self.bmi < 29.9 {
                    self.classification = "Overweight"
                } else {
                    self.classification = "Obese"
                }
                
            } label: {
                Text("Calculate BMI")
                    .foregroundColor(.blue)
                    .font(Font.system(size: 16))
            }
            .frame(width: 200, height: 50)
            .background(.green)
            
            Text("BMI: \(bmi, specifier: "%.1f"),\(classification)")
                .font(Font.system(size: 20))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

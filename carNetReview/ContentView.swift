//
//  ContentView.swift
//  carNetReview
//
//  Created by Ian Brown on 5/14/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.init(CGColor.init(red: 0.09, green: 0.11, blue: 0.35, alpha: 1.00))
                .ignoresSafeArea()
            VStack  {
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Image(systemName: "car.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(.white)
                    Text("car-net Logo")
                        .foregroundColor(.white)
                        .bold()
                    Spacer()
                    Button (action: {}, label: {
                        Text("Logout")
                            .foregroundColor(.init(red: 0, green: 0.7, blue: 250))
                    })
                        .padding(10)
                }
                ZStack {
                    Color.white
                    VStack {
                        Text("Your Garage")
                            .bold()
                            .padding(.bottom, 0)
                            .padding(.top, 10)
                        Text("Select or add a vehcile to access your vehicle status,\nremote commands, vehicle health report and more.")
                            .font(.caption2)
                            .foregroundColor(.gray)
                            .padding(.top, -5)
                        Text("Your garage is empty")
                            .font(Font.custom("PingFangHK-Thin", size: 20))
                            .fontWeight(.some(Font.Weight.light))
                            .frame(width: 250, height: 100, alignment: .center)
                        Spacer()
                        Text("Dont see your car?")
                            .bold()
                            .padding(.top, 150)
                        Button(action: {}, label: {
                            Text("Add Vehicle")
                                .frame(width: 275, height: 40, alignment: .center)
                                .foregroundColor(.white)
                                .background(Color.init(red: 0, green: 0.7, blue: 250))
                        })
                        .cornerRadius(100)
                        
                        Spacer()
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

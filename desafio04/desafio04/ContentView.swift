//
//  ContentView.swift
//  desafio04
//
//  Created by Turma01-10 on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var distance: Double = 0
    @State var time: Double = 0
    @State var speed: Double = 0
    
    var body: some View {
        
        VStack {
            
            Text("Digite a distancia (km):")
            TextField("0", value: $distance, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Digite o tempo (h):")
            TextField("0", value: $time, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Calcular", action: {speed = distance / time})
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .background(.black)
                .foregroundColor(.orange)
                .buttonStyle(.bordered)
                .cornerRadius(12)
                .padding()
            
            Text("\(speed, specifier: "%.2f") km/h")
                .font(.title)
                .padding()
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.black)
                .frame(width: 270, height: 200)
                .overlay(
                    VStack {
                        Text("TARTARUGA")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                        Text("ELEFANTE")
                            .foregroundColor(.white)
                        Text("AVESTRUZ")
                            .foregroundColor(.white)
                        Text("LEÃO")
                            .foregroundColor(.white)
                        Text("GUEPARDO")
                            .foregroundColor(.white)
                    }
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

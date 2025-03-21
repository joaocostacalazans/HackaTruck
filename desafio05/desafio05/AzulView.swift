//
//  AzulView.swift
//  desafio05
//
//  Created by Turma01-10 on 21/03/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Circle()
                .fill(.black)
                .frame(width: 300, height: 300)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .foregroundColor(.blue)
        }
    }
}

struct AzulView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

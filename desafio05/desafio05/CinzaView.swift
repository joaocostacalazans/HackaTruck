//
//  CinzaView.swift
//  desafio05
//
//  Created by Turma01-10 on 21/03/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Circle()
                .fill(.black)
                .frame(width: 300, height: 300)
            Image(systemName: "paintpalette")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .foregroundColor(.gray)
        }
    }
}

struct CinzaView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

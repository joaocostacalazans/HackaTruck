//
//  RosaView.swift
//  desafio05
//
//  Created by Turma01-10 on 21/03/25.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack {
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Circle()
                .fill(.black)
                .frame(width: 300, height: 300)
            Image(systemName: "paintbrush")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .foregroundColor(.pink)
        }
    }
}

struct RosaView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  SongView.swift
//  temp
//
//  Created by Turma01-10 on 27/03/25.
//

import Foundation
import SwiftUI

struct SongView: View {
    
    @State var song: Song
    
    var body: some View {
        
        ZStack {
            LinearGradient(stops: [
                Gradient.Stop(color: .blue, location: 0.15),
                Gradient.Stop(color: .black, location: 0.55),
            ], startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                AsyncImage(url: URL(string: song.cover)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                } placeholder: {
                    Image(systemName: "photo.fill")
                }
                .frame(width: 250)
                .padding()
                
                Text(song.name)
                    .foregroundStyle(.white)
                    .font(.title)
                Text(song.name)
                    .foregroundStyle(.white)
                
                Spacer()
                
                HStack(spacing: 30) {
                    Image(systemName: "shuffle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.white)
                    Image(systemName: "backward.end")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.white)
                    Image(systemName: "play")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.white)
                    Image(systemName: "forward.end")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.white)
                    Image(systemName: "repeat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

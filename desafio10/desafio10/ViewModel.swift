//
//  ViewModel.swift
//  desafio10
//
//  Created by Turma01-10 on 29/03/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var castelos: [Castelo] = []
    
    func fetch() {
        
        guard let url = URL(string: "http://localhost:1880/jccGet") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                
                let parsed = try JSONDecoder().decode([Castelo].self, from: data)
                
                DispatchQueue.main.async {
                    
                    self?.castelos = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}

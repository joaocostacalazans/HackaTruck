//
//  Model.swift
//  desafio10
//
//  Created by Turma01-10 on 29/03/25.
//

import Foundation

struct Castelo: Decodable {
    let _id: String
    var nome: String
    var pais: String
    var anoConstrucao: Int
    var imagemURL: String
}

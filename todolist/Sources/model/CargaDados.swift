//
//  CargaDados.swift
//  todolist
//
//  Created by Leonardo Marques on 31/05/23.
//
final class CargaDados{
    
    static func getPessoas() -> [Pessoa] {
        var Pessoas: [Pessoa] = []
        
        var pessoa = getPessoa(nome: "Alisson", idade: 25,time: "Liverpool",posicao: "Goleiro")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Thiago Silva", idade: 37,time: "Chelsea",posicao: "Zagueiro")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Marquinhos", idade: 28,time: "PSG",posicao: "Zagueiro")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Militão", idade: 28,time: "Real Madrid",posicao: "Zagueiro")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Danilo", idade: 30,time: "Juventus",posicao: "Lateral")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Casemiro", idade: 30,time: "Real Madrid",posicao: "Meio Campo")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Paquetá", idade: 28,time: "Aston Villa",posicao: "Meio Campo")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Raphinha", idade: 28,time: "Barcelona",posicao: "Meio Campo")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Neymar", idade: 30,time: "PSG",posicao: "Atacante")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Vini Jr", idade: 23,time: "Real Madrid",posicao: "Atacante")
        Pessoas.append(pessoa)
        
        pessoa = getPessoa(nome: "Richarlison", idade: 23,time: "Totteham",posicao: "Atacante")
        Pessoas.append(pessoa)
                
        return Pessoas
    }
    
    static func getPessoa(nome: String, idade: Int, time:String, posicao:String) -> Pessoa{
        let pessoa = Pessoa(nome: nome, idade: idade,time: time,posicao: posicao)
        return pessoa
    }
}


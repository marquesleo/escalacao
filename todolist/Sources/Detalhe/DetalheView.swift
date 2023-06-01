//
//  DetalheView.swift
//  todolist
//
//  Created by Leonardo Marques on 09/05/23.
//

import UIKit

class DetalheView: UIView {
    
    var pessoa: Pessoa!
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var nomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Nome"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private lazy var idadeLabel: UILabel = {
        let label = UILabel()
        label.text = "Idade"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private lazy var posicaoLabel: UILabel = {
        let label = UILabel()
        label.text = "Posição"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.text = "Time"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
        
    private lazy var nomeTexto: UILabel = {
        let label = UILabel()
        label.text = pessoa.nome
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }( )
    
    private lazy var idadeTexto: UILabel = {
        let label = UILabel()
        label.text = String(pessoa.idade)
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }( )
    
    private lazy var posicaoTexto: UILabel = {
        let label = UILabel()
        label.text = String(pessoa.posicao)
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }( )
    
    private lazy var timeTexto: UILabel = {
        let label = UILabel()
        label.text = String(pessoa.time)
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }( )
    private func buildView(){
        stackView.addArrangedSubview(nomeLabel)
        stackView.addArrangedSubview(nomeTexto)
        stackView.addArrangedSubview(idadeLabel)
        stackView.addArrangedSubview(idadeTexto)
        stackView.addArrangedSubview(posicaoLabel)
        stackView.addArrangedSubview(posicaoTexto)
        stackView.addArrangedSubview(timeLabel)
        stackView.addArrangedSubview(timeTexto)

        // Adicione a pilha vertical à sua view principal
        addSubview(stackView)
        constraintNomeLabel()
    }
    
    private func constraintNomeLabel() {
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    init(valor:Pessoa) {
        super.init(frame: .zero)
        pessoa = valor
        backgroundColor  = .white
        buildView()
    }
    
   
    
   
    
    required init?(coder: NSCoder){
        fatalError()
    }
}

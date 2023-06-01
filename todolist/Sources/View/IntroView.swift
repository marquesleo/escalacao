//
//  IntroView.swift
//  todolist
//
//  Created by Leonardo Marques on 08/05/23.
//

import UIKit
import SwiftUI
class IntroView: UIView {
    
    init() {
        super.init(frame: .zero)
        backgroundColor  = .white
        addComponentes()
        constraintTableView()
        getApi()
        
    }
    private lazy var Pessoas: [Pessoa] = []
    
    private var data: [String] = []
    //usado pelo storie bord
    required init?(coder: NSCoder){
        fatalError()
    }
    
    private func getApi() {
        Pessoas = CargaDados.getPessoas()
    }
    
    private lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello Word"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private lazy var nomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Leonardo"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var tableView: UITableView = {
        let tableView  = UITableView(frame: .zero,style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.allowsMultipleSelection = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
       return tableView
    }()
    
    
    private func addComponentes(){
        addSubview(tableView)
        //addSubview(helloLabel)
        //addSubview(nomeLabel)
        
    }
        
    private func constraintTableView(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo:  topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func constraintHelloLabel() {
        let constraint = [
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        constraint.forEach{
            (item) in
            item.isActive = true
        }
    }
    
    private func constraintNomeLabel() {
        let constraint = [
            nomeLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 12),
            nomeLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ]
        
        constraint.forEach{
            (item) in
            item.isActive = true
        }
    }
    
      func doSomething(valor:Pessoa){
        
        let navController = UINavigationController(rootViewController: IntroViewController())
                           
        let detalheViewController = DetalheViewController()
        detalheViewController.pessoa = valor
      
        navController.pushViewController(detalheViewController, animated: true)
        //UIApplication.shared.windows.first?.rootViewController = navController
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let sceneDelegate = windowScene.delegate as? SceneDelegate {
                if let window = sceneDelegate.window {
                    // Define o navController como o controlador de visualizações raiz da cena atual
                    window.rootViewController = navController
                }
            }
        }
       
       
    }
    
}


extension IntroView: UITableViewDelegate
{
    //printa as linhas selecionadas
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
       
            let model = Pessoas[indexPath.item]
           doSomething(valor:model)
    
      }
    
  
   
    @IBAction func navigateToCode(_ sender:Any){
        
    }
    
    
}


extension IntroView: UITableViewDataSource {
    
    
    //numero de secoes
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default,  reuseIdentifier: "UITableViewCell")
        
      
            let model = Pessoas[indexPath.item]
        cell.textLabel?.text  = model.nome
        
        return cell
    }
      
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        
        return Pessoas.count
    
    }
    
    
    
    
}

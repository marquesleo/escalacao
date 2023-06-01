//
//  DetalheViewController.swift
//  todolist
//
//  Created by Leonardo Marques on 09/05/23.
//

import UIKit

class DetalheViewController : UIViewController {
    
    private var customView: DetalheView? = nil
    var pessoa:Pessoa!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        buildView()
    }
    
    private func buildView(){
        view = DetalheView(valor: pessoa)
        customView = view as? DetalheView
        
    }
}

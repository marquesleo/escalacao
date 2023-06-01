//
//  IntroViewController.swift
//  todolist
//
//  Created by Leonardo Marques on 08/05/23.
//

import UIKit
final class IntroViewController : UIViewController {
        
    
    private var customView: IntroView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        buildView()
    }
    
    private func buildView(){
        view = IntroView()
        customView = view as? IntroView
        
    }
 
}

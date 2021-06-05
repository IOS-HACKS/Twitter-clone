//
//  ConversationController.swift
//  Twitter Clone
//
//  Created by ABDUL BASITH A on 06/06/21.
//

import UIKit
class ConversationController: UIViewController {
    // MARK : - Properties
    
    // MARK : - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK:- Helpers
    func configureUI(){
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}

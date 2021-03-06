//
//  FeedController.swift
//  Twitter Clone
//
//  Created by ABDUL BASITH A on 05/06/21.
//


import UIKit
class FeedController: UIViewController{
    // MARK : - Properties
    
    // MARK : - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK:- Helpers
    
    
    func configureUI(){
        view.backgroundColor = .white
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
    
}

//
//  MainTabController.swift
//  Twitter Clone
//
//  Created by ABDUL BASITH A on 05/06/21.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK : - Properties
    
    let actionButton : UIButton = {
        let button  = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK : - Lifecycles
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureUI()
        
    }
    // MARK :- Selectors
    
    @objc func actionButtonTapped(){
        print("Tapped")
    }
    
    
    // MARK:- Helpers
    
    func configureViewController() {
        
        let feed = FeedController()
        let nav1 = templateNavigationController(image: UIImage(named: "home_unselected")!, rootNavigationController: feed)
        
        let explore = ExploreController()
        explore.tabBarItem.image =  UIImage(named: "search_unselected")
        let nav2 = templateNavigationController(image: UIImage(named: "search_unselected")!, rootNavigationController: explore)
        
        let notification = NotificationController()
        let nav3 = templateNavigationController(image: UIImage(named: "like_unselected")!, rootNavigationController: notification)
        
        let conversation = ConversationController()
        let nav4 = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1")!, rootNavigationController: conversation)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }
    
    func templateNavigationController(image: UIImage, rootNavigationController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootNavigationController)
        nav.tabBarItem.image = image
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    
    
}

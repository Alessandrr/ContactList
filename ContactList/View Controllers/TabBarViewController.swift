//
//  TapBarViewController.swift
//  ContactList
//
//  Created by Aleksandr Mamlygo on 02.06.23.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let people = Person.getPeople()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        viewControllers?.forEach { viewController in
            guard let navigationVC = viewController as? UINavigationController else { return }
            
            if let contactListVC = navigationVC.topViewController as? ContactsViewController {
                contactListVC.people = people
            } else if let fullInfoVC = navigationVC.topViewController as? FullInfoTableViewController {
                fullInfoVC.people = people
            }
        }
    }

}

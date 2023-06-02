//
//  TapBarViewController.swift
//  ContactList
//
//  Created by Aleksandr Mamlygo on 02.06.23.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let people = Person.getPeople(from: DataStore())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers?.forEach { viewController in
            if let navigationVC = viewController as? UINavigationController {
                guard let contactListVC = navigationVC.topViewController as? ContactsViewController else { return }
                contactListVC.people = people
            } else if let fullInfoVC = viewController as? FullInfoTableViewController {
                fullInfoVC.people = people
            }
        }
    }

}

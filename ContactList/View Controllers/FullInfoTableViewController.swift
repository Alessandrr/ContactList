//
//  FullInfoTableViewController.swift
//  ContactList
//
//  Created by Aleksandr Mamlygo on 02.06.23.
//

import UIKit

class FullInfoTableViewController: UITableViewController {

    var people: [Person]!
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return people.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactData", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "phone")
            content.text = people[indexPath.section].phoneNumber
        default:
            content.image = UIImage(systemName: "mail")
            content.text = people[indexPath.section].email
        }
        
        cell.contentConfiguration = content
        return cell
    }

    //MARK: – Table view delegate
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        people[section].fullName
    }

}

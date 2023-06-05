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
        people.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people[section].rows.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactData", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = people[indexPath.section]
        content.text = person.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: "phone")
        : UIImage(systemName: "mail")
        
//        switch indexPath.row {
//        case 0:
//            content.image = UIImage(systemName: "phone")
//            content.text = people[indexPath.section].phoneNumber
//        default:
//            content.image = UIImage(systemName: "mail")
//            content.text = people[indexPath.section].email
//        }
        
        cell.contentConfiguration = content
        return cell
    }
    
//MARK: - View for header in section
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let fullNameLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width,
                height: 20
            )
        )
        fullNameLabel.text = people[section].fullName
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        fullNameLabel.textColor = .white
        
        let contentView = UIView()
        contentView.addSubview(fullNameLabel)
        
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .gray
    }
}

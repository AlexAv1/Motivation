//
//  AddHabitPropertyViewController.swift
//  Motivation
//
//  Created by iMac on 21.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit

class AddHabitPropertyViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var tableView: UITableView!
    
    // - Data
    var sectionHab = [""]
    var lblHab = [[""]]
    var titleName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

}

// MARK: -
// MARK: - UITableViewDataSource

extension AddHabitPropertyViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionHab.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lblHab[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddHabitPropertyTableViewCell", for: indexPath ) as! AddHabitPropertyTableViewCell
        cell.textLabel?.text = lblHab[indexPath.section][indexPath.row]
        if indexPath.section == 1 && indexPath.row == 0 {
            cell.accessoryType = .disclosureIndicator
        }
        return cell
    }
    
}

// MARK: -
// MARK: - UITableViewDelegate

extension AddHabitPropertyViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 && indexPath.row == 0 {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            navigationController?.popViewController(animated: true)
        } else if indexPath.section == 0 && indexPath.row == 1 {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            navigationController?.popViewController(animated: true)
        } else if indexPath.section == 0 && indexPath.row == 2 {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            navigationController?.popViewController(animated: true)
        } else if indexPath.section == 0 && indexPath.row == 3 {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            navigationController?.popViewController(animated: true)
        } else if indexPath.section == 0 && indexPath.row == 4 {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            navigationController?.popViewController(animated: true)
        }
    }
    
}

// MARK: -
// MARK: - Configure

private extension AddHabitPropertyViewController {
    
    func configure() {
        configureTableView()
        configureTitle()
    }
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func configureTitle() {
        title = titleName
    }
    
}

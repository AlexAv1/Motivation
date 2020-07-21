//
//  InstallTimeViewController.swift
//  Motivation
//
//  Created by iMac on 09.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit
import DateTimePicker

class InstallTimeViewController: UIViewController{
    
    // - UI
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

// MARK: -
// MARK: - UITableViewDataSource

extension InstallTimeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InstallTimeTableViewCell", for: indexPath) as! InstallTimeTableViewCell
        if indexPath.row == 1 {
            let shareLocationSwitch = UISwitch()
            cell.label1.text = "Напоминание"
            cell.label2.text = ""
            cell.accessoryView = shareLocationSwitch
        } else {
            if indexPath.row == 0 && indexPath.section == 0 {
                cell.label1.text = "Утро начинается в"
                cell.label2.text = "8:00"
            } else {
                if indexPath.row == 0 && indexPath.section == 1 {
                    cell.label1.text = "День начинается в"
                    cell.label2.text = "14:00"
                } else {
                    if indexPath.row == 0 && indexPath.section == 2 {
                        cell.label1.text = "Вечер начинается в"
                        cell.label2.text = "19:00"
                    } else {
                        cell.label1.text = "Ночь начинается в"
                        cell.label2.text = "00:00"
                    }
                }
            }
        }
        return cell
    }
    
}

// MARK: -
// MARK: - UITableViewDelegate

extension InstallTimeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 && indexPath.row == 0 {
            let picker = DateTimePicker.create()
            picker.frame = CGRect(x: 0, y: 0, width: picker.frame.size.width, height: picker.frame.size.height)
            picker.dateFormat = ""
            picker.isTimePickerOnly = true
            picker.show()
        }
        
        if indexPath.section == 1 && indexPath.row == 0 {
            let picker = DateTimePicker.create()
            picker.frame = CGRect(x: 0, y: 0, width: picker.frame.size.width, height: picker.frame.size.height)
            picker.dateFormat = ""
            picker.isTimePickerOnly = true
            picker.show()
        }
        
        if indexPath.section == 2 && indexPath.row == 0 {
            let picker = DateTimePicker.create()
            picker.frame = CGRect(x: 0, y: 0, width: picker.frame.size.width, height: picker.frame.size.height)
            picker.dateFormat = ""
            picker.isTimePickerOnly = true
            picker.show()
        }
        
        if indexPath.section == 3 && indexPath.row == 0 {
            let picker = DateTimePicker.create()
            picker.frame = CGRect(x: 0, y: 0, width: picker.frame.size.width, height: picker.frame.size.height)
            picker.dateFormat = ""
            picker.isTimePickerOnly = true
            picker.show()
        }
    }
    
}

// MARK: -
// MARK: - Configure

private extension InstallTimeViewController {
    
    func configure() {
        configureTableView()
        configureTitle()
    }
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func configureTitle() {
        title = "Установить время суток"
    }
    
}


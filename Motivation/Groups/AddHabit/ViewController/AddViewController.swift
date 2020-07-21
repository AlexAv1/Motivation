//
//  AddViewController.swift
//  Motivation
//
//  Created by iMac on 10.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var tableView: UITableView!
    let shareLocationSwitch = UISwitch()
    let shareLocationSwitch2 = UISwitch()
    
    // - Data
    private let lbl = [
        [""], ["", "", ""], [""], [""], ["", ""], [""]
    ]
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

extension AddViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lbl[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddTableViewCell", for: indexPath) as! AddTableViewCell
        if indexPath.section == 0 && indexPath.row == 0 {
            cell.label1.text = "Название"
            cell.label1.textColor = UIColor.lightGray
            cell.label2.text = ""
        } else {
            if indexPath.section == 1 && indexPath.row == 0 {
                cell.label1.text = "Количество"
                cell.label2.text = "1 раз"
            } else {
                if indexPath.section == 1 && indexPath.row == 1 {
                    cell.label1.text = "Повтор"
                    cell.label2.text = "Ежедневно"
                    cell.accessoryType = .disclosureIndicator
                } else {
                    if indexPath.section == 1 && indexPath.row == 2 {
                        cell.label1.text = "Время суток"
                        cell.label2.text = "В течение дня"
                        cell.accessoryType = .disclosureIndicator
                    } else {
                        if indexPath.section == 2 && indexPath.row == 0 {
                            cell.label1.text = "Напомнить"
                            cell.label2.text = ""
                            cell.accessoryView = shareLocationSwitch
                        } else {
                            if indexPath.section == 3 && indexPath.row == 0 {
                                cell.label1.text = "Установить даты"
                                cell.label2.text = ""
                                cell.accessoryView = shareLocationSwitch2
                            } else {
                                if indexPath.section == 4 && indexPath.row == 0 {
                                    cell.label2.text = ""
                                    cell.label1.text = "URL"
                                    cell.label1.textColor = .lightGray
                                } else {
                                    if indexPath.section == 4 && indexPath.row == 1 {
                                        cell.label2.text = ""
                                        cell.label1.text = "Заметка"
                                        cell.label1.textColor = .lightGray
                                    } else {
                                        if indexPath.section == 5 && indexPath.row == 0 {
                                            cell.label1.text = ""
                                            cell.label2.text = ""
                                            cell.textLabel?.text = "Удалить"
                                            cell.textLabel?.textColor = .red
                                            cell.textLabel?.textAlignment = .center
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return cell
    }
    
}

// MARK: -
// MARK: - UITableViewDelegate

extension AddViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let addHabPropVC = UIStoryboard(name: "AddHabitProperty", bundle: nil).instantiateInitialViewController() as! AddHabitPropertyViewController
        if indexPath.section == 1 && indexPath.row == 1 {
            sectionHab = ["", ""]
            lblHab = [["Ежедневно", "Каждый будний день", "Каждый выходной день"], ["Произвольно"]]
            titleName = "Повтор"
            addHabPropVC.sectionHab = sectionHab
            addHabPropVC.lblHab = lblHab
            addHabPropVC.titleName = titleName
            navigationController?.pushViewController(addHabPropVC, animated: true)
        } else if indexPath.section == 1 && indexPath.row == 2 {
            sectionHab = [""]
            lblHab = [["В течение дня", "Утром", "Днём", "Вечером", "Ночью"]]
            titleName = "Время суток"
            addHabPropVC.sectionHab = sectionHab
            addHabPropVC.lblHab = lblHab
            addHabPropVC.titleName = titleName
            navigationController?.pushViewController(addHabPropVC, animated: true)
        }
    }
    
}

// MARK: -
// MARK: - Configure

private extension AddViewController {
    
    func configure() {
        configureTableView()
        configureTitle()
    }
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func configureTitle() {
        title = "Привычка"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Сохранить", style: .plain, target: nil, action: nil)
    }
    
}

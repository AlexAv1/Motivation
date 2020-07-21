//
//  SettingViewController.swift
//  Motivation
//
//  Created by iMac on 03.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit
import StoreKit
import MessageUI

class SettingViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    // - UI
    @IBOutlet weak var tableView: UITableView!
    
    // - Data
    private let sections = ["Приобретая премиум-версию Вы не только получаете приятные дополнительные возможности, но и поддерживаете нас и развитие приложения.", "", ""]
    private let lbl = [
        ["Обновить до Премиум", "Что даёт премиум версия", "Восстановить покупку"],
        ["Установить время суток"],
        ["Служба поддержки", "Написать нам письмо", "Поделиться с друзьями в Фейсбуке", "Твитнуть о приложении", "Оценить"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

// MARK: -
// MARK: - UITableViewDataSource

extension SettingViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lbl[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath) as! SettingTableViewCell
        cell.textLabel?.text = lbl[indexPath.section][indexPath.row]
        if indexPath.section == 1 {
            cell.accessoryType = .disclosureIndicator
        }
        if indexPath.section == 2 && indexPath.row == 2 {
            cell.textLabel?.textColor = .purple
        } else {
            if indexPath.section == 2 && indexPath.row == 3 {
                cell.textLabel?.textColor = .blue
            } else {
                if indexPath.section == 2 && indexPath.row == 4 {
                    cell.textLabel?.textColor = .orange
                }
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return self.sections[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        let footer = view as! UITableViewHeaderFooterView
        footer.textLabel?.textAlignment = .left
        footer.textLabel?.font = UIFont.systemFont(ofSize: 10)
    }
    
}

// MARK: -
// MARK: - UITableViewDelegate

extension SettingViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 && indexPath.row == 1 {
            let abPremVC = UIStoryboard(name: "AboutPremium", bundle: nil).instantiateInitialViewController() as! AboutPremiumViewController
            abPremVC.modalTransitionStyle = .crossDissolve
            present(abPremVC, animated: true, completion: nil)
        }
        
        if indexPath.section == 2 && indexPath.row == 4 {
            rateApp()
        }
        
        if indexPath.section == 1 && indexPath.row == 0 {
            let instTimeVC = UIStoryboard(name: "InstallTime", bundle: nil).instantiateInitialViewController() as! InstallTimeViewController
            navigationController?.pushViewController(instTimeVC, animated: true)
        }
        
        if indexPath.section == 2 && indexPath.row == 1 {
            sendMail()
        }
    }
    
}

// MARK: -
// MARK: - Send mail

extension SettingViewController {
    
    func configureMailComposer() -> MFMailComposeViewController {
        let mailComposiveVC = MFMailComposeViewController()
        
        mailComposiveVC.mailComposeDelegate = self
        mailComposiveVC.setToRecipients(["alexavizhits@gmail.com"])
        mailComposiveVC.setSubject("Заголовок")
        mailComposiveVC.setMessageBody("Тело", isHTML: false)
        
        return mailComposiveVC
    }
    
    func sendMail() {
        let mailComposeViewController = configureMailComposer()
        
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            print("Нет доступа к iCloud")
        }
    }
    
}

// MARK: -
// MARK: - Rate App

func rateApp() {
    if #available(iOS 10.3, *) {
        SKStoreReviewController.requestReview()
    } else {
        let url = URL(string: "itms-app://itunes.apple.com/app/id123456789")!
        UIApplication.shared.openURL(url)
    }
    
}

// MARK: -
// MARK: - Configure

private extension SettingViewController {
    
    func configure() {
        configureTableView()
        configureTitle()
    }
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func configureTitle() {
        title = "Настройки"
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Настройки", style: .plain, target: nil, action: nil)
    }
    
}

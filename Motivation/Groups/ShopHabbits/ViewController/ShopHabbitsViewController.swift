//
//  ShopHabbitsViewController.swift
//  Motivation
//
//  Created by iMac on 16.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit

class ShopHabbitsViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var tableView: UITableView!
    
    // - Data
    var type = ShopHabbitsViewControllerType.health
    
    private var actives = Array(repeating: false, count: 19)
    var habits = [HabitsModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

// MARK: -
// MARK: - UITableViewDataSource

extension ShopHabbitsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopHabbitsTableViewCell", for: indexPath ) as! ShopHabbitsTableViewCell
        let hab = habits[indexPath.row]
        
        if actives[indexPath.row] == false {
            cell.myImageView.image = UIImage(named: "none")
        } else {
            cell.myImageView.image = UIImage(named: "ok")
        }
        
        cell.label1.text = hab.nameLabel
        cell.label2.text = hab.countLabel
        
        return cell
    }
    
}

// MARK: -
// MARK: - UITableViewDelegate

extension ShopHabbitsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        actives[indexPath.row] = !actives[indexPath.row]
        tableView.reloadData()
    }
    
}

// MARK: -
// MARK: - Configure

private extension ShopHabbitsViewController {
    
    func configure() {
        configureTableView()
        configureTitle()
    }
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func configureTitle() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Добавить", style: .plain, target: nil, action: nil)
        title = type.title
    }
    
}

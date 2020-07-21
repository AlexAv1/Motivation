//
//  HabitsViewController.swift
//  Motivation
//
//  Created by iMac on 03.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit

class HabitsViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    // - Data
    var sect = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

// MARK: -
// MARK: - UITableViewDataSource

extension HabitsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        sect
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HabitsTableViewCell", for: indexPath) as! HabitsTableViewCell
        return cell
    }
    
}

// MARK: -
// MARK: - UITableViewDelegate

extension HabitsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

// MARK: -
// MARK: - Segmented Control

extension HabitsViewController {
    
    @IBAction func didChangeSegment(_ segmentControl: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0 {
            sect = 4
            tableView.reloadData()
        } else {
            if segmentControl.selectedSegmentIndex == 1 {
                sect = 1
                tableView.reloadData()
            }
        }
    }
}

// MARK: -
// MARK: - Configure

private extension HabitsViewController {
    
    @objc func add() {
        let addVC = UIStoryboard(name: "Add", bundle: nil).instantiateInitialViewController() as! AddViewController
        navigationController?.pushViewController(addVC, animated: true)
    }
    
    func configure() {
        configureNavigationBar()
        configureTableView()
    }
    
    func configureNavigationBar() {
        segmentControl.backgroundColor = UIColor.systemBlue
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(add))
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Привычки", style: .plain, target: nil, action: nil)
    }
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}


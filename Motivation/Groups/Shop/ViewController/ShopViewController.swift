//
//  ShopViewController.swift
//  Motivation
//
//  Created by iMac on 03.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var tableView: UITableView!
    
    // - Data
    private var shops = [ShopModel]()
    private var improvementHabits = [HabitsModel]()
    private var efficiencyHabits = [HabitsModel]()
    private var societyHabits = [HabitsModel]()
    private var hobbiesHabits = [HabitsModel]()
    private var homeHabits = [HabitsModel]()
    private var fitnessHabits = [HabitsModel]()
    private var healthHabits = [HabitsModel]()
    private var creationHabits = [HabitsModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

// MARK: -
// MARK: - UITableViewDataSource

extension ShopViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shops.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTableViewCell", for: indexPath ) as! ShopTableViewCell
        let shop = shops[indexPath.row]
        cell.nameLabel.text = shop.nameLabel
        return cell
    }
}

// MARK: -
// MARK: - UITableViewDelegate

extension ShopViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let shopHabVC = UIStoryboard(name: "ShopHabbits", bundle: nil).instantiateInitialViewController() as! ShopHabbitsViewController
        switch indexPath.row {
        case 0:
            shopHabVC.habits = healthHabits
        case 1:
            shopHabVC.habits = fitnessHabits
        case 2:
            shopHabVC.habits = homeHabits
        case 3:
            shopHabVC.habits = hobbiesHabits
        case 4:
            shopHabVC.habits = societyHabits
        case 5:
            shopHabVC.habits = improvementHabits
        default:
            shopHabVC.habits = creationHabits
        }
        navigationController?.pushViewController(shopHabVC, animated: true)
    }
    
}

// MARK: -
// MARK: - Configure

private extension ShopViewController {
    
    func configure() {
        configureTableView()
        configureShops()
        configureTitle()
        configureHealthHabits()
        configureFitnessHabits()
        configureHomeHabits()
        configureHobbiesHabits()
        configureSocietyHabits()
        configureEfficiencyHabits()
        configureImprovementHabits()
        configureCreationHabits()
    }
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func configureShops() {
        let s1 = ShopModel(nameLabel: "Здоровье")
        let s2 = ShopModel(nameLabel: "Фитнес")
        let s3 = ShopModel(nameLabel: "Дом")
        let s4 = ShopModel(nameLabel: "Увлечения")
        let s5 = ShopModel(nameLabel: "Общество")
        let s6 = ShopModel(nameLabel: "Эффективность")
        let s7 = ShopModel(nameLabel: "Совершенствование")
        let s8 = ShopModel(nameLabel: "Творчество")
        
        shops = [s1, s2, s3, s4, s5, s6, s7, s8]
    }
    
    func configureTitle() {
        title = "Магазин"
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Магазин", style: .plain, target: nil, action: nil)
    }
    
    func configureCreationHabits() {
        let hab1 = HabitsModel(nameLabel: "Написать статью в блог", countLabel: "1 раз вечером, еженедельно", image: "none")
        let hab2 = HabitsModel(nameLabel: "Порисовать обеими руками", countLabel: "1 раз в течение дня, еженедельно", image: "none")
        let hab3 = HabitsModel(nameLabel: "Написать что-нибудь от руки", countLabel: "10 мин утром, каждый будний день", image: "none")
        let hab4 = HabitsModel(nameLabel: "Сделать фото в инстаграмм", countLabel: "1 раз вечером, ежедневно", image: "none")
        
        creationHabits = [hab1, hab2, hab3, hab4]
    }
    
    func configureImprovementHabits() {
        let hab1 = HabitsModel(nameLabel: "Спланировать путешествие", countLabel: "1 раз утром, ежемесячно", image: "none")
        let hab2 = HabitsModel(nameLabel: "Посмотреть иностранный фильм", countLabel: "2 ч вечером, еженедельно", image: "none")
        let hab3 = HabitsModel(nameLabel: "Послушать новую группу", countLabel: "45 мин в течение дня, еженедельно", image: "none")
        let hab4 = HabitsModel(nameLabel: "Съесть новое блюдо", countLabel: "1 раз днём, еженедельно", image: "none")
        let hab5 = HabitsModel(nameLabel: "Сделать что-то, что пугает", countLabel: "1 раз в течение дня, через кажд. 21 дн.", image: "none")
        let hab6 = HabitsModel(nameLabel: "Узнать новый факт", countLabel: "1 раз в течение дня, ежедневно", image: "none")
        let hab7 = HabitsModel(nameLabel: "Практика в новом языке", countLabel: "10 мин вечером, ежедневно", image: "none")
        let hab8 = HabitsModel(nameLabel: "Выучить 10 новых слов", countLabel: "20 мин в течение дня, ежедневно", image: "none")
        
        improvementHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8]
    }
    
    func configureEfficiencyHabits() {
        let hab1 = HabitsModel(nameLabel: "Провести день без соцсетей", countLabel: "1 раз в течение дня, ежемесячно", image: "none")
        let hab2 = HabitsModel(nameLabel: "Не включать компьютер", countLabel: "1 раз в течение дня, еженедельно", image: "none")
        let hab3 = HabitsModel(nameLabel: "Работать из дома", countLabel: "1 раз в течение дня, еженедельно", image: "none")
        let hab4 = HabitsModel(nameLabel: "Написать план на неделю", countLabel: "1 раз утром, еженедельно", image: "none")
        let hab5 = HabitsModel(nameLabel: "Подведение итогов за неделю", countLabel: "1 раз утром, еженедельно", image: "none")
        let hab6 = HabitsModel(nameLabel: "Поставить цели на год", countLabel: "1 раз в течение дня, через кажд. 365 дн.", image: "none")
        let hab7 = HabitsModel(nameLabel: "Разобрать все письма", countLabel: "1 раз вечером, каждый будний день", image: "none")
        let hab8 = HabitsModel(nameLabel: "Написать отчёт и план на завтра", countLabel: "1 раз вечером, каждый будний день", image: "none")
        let hab9 = HabitsModel(nameLabel: "Выключить компьютер в 21:00", countLabel: "1 раз вечером, каждый будний день", image: "none")
        let hab10 = HabitsModel(nameLabel: "Отвлекаться от компьютера", countLabel: "1 раз в течение дня, каждый будний день", image: "none")
        let hab11 = HabitsModel(nameLabel: "Заниматься своим проектом", countLabel: "2 ч вечером, каждый будний день", image: "none")
        let hab12 = HabitsModel(nameLabel: "Начать день с Motivation", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab13 = HabitsModel(nameLabel: "Лечь спать до 12 ночи", countLabel: "1 раз ночью, ежедневно", image: "none")
        let hab14 = HabitsModel(nameLabel: "Просыпаться вовремя", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab15 = HabitsModel(nameLabel: "Вести список задач", countLabel: "1 раз в течение дня, ежедневно", image: "none")
        
        efficiencyHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11, hab12, hab13, hab14, hab15]
    }
    
    func configureSocietyHabits() {
        let hab1 = HabitsModel(nameLabel: "Позвонить родителям", countLabel: "1 раз утром, ежемесячно", image: "none")
        let hab2 = HabitsModel(nameLabel: "Позвонить старому другу", countLabel: "1 раз вечером, ежемесячно", image: "none")
        let hab3 = HabitsModel(nameLabel: "Встретиться с друзьями", countLabel: "1 раз вечером, ежемесячно", image: "none")
        let hab4 = HabitsModel(nameLabel: "Провести день с семьёй", countLabel: "1 раз в течение дня, еженедельно", image: "none")
        let hab5 = HabitsModel(nameLabel: "Сказать «Я тебя люблю»", countLabel: "1 раз в течение дня, еженедельно", image: "none")
        let hab6 = HabitsModel(nameLabel: "Выйти из дома", countLabel: "1 раз вечером, еженедельно", image: "none")
        
        societyHabits = [hab1, hab2, hab3, hab4, hab5, hab6]
    }
    
    func configureHobbiesHabits() {
        let hab1 = HabitsModel(nameLabel: "Потанцевать", countLabel: "1 ч вечером, еженедельно", image: "none")
        let hab2 = HabitsModel(nameLabel: "Приготовить что-то новое", countLabel: "1 раз вечером, еженедельно", image: "none")
        let hab3 = HabitsModel(nameLabel: "Поиграть на инструменте", countLabel: "1 ч днём, еженедельно", image: "none")
        let hab4 = HabitsModel(nameLabel: "Порисовать", countLabel: "1 ч днём, еженедельно", image: "none")
        let hab5 = HabitsModel(nameLabel: "Поиграть в игру", countLabel: "1 ч днём, еженедельно", image: "none")
        let hab6 = HabitsModel(nameLabel: "Почитать книгу", countLabel: "30 мин вечером, ежедневно", image: "none")
        
        hobbiesHabits = [hab1, hab2, hab3, hab4, hab5, hab6]
    }
    
    func configureHomeHabits() {
        let hab1 = HabitsModel(nameLabel: "Сделать уборку", countLabel: "1 раз днём, еженедельно", image: "none")
        let hab2 = HabitsModel(nameLabel: "Полить цветы", countLabel: "1 раз днём, еженедельно", image: "none")
        let hab3 = HabitsModel(nameLabel: "Постирать", countLabel: "1 раз утром, еженедельно", image: "none")
        let hab4 = HabitsModel(nameLabel: "Приготовить обед", countLabel: "1 раз днём, еженедельно", image: "none")
        let hab5 = HabitsModel(nameLabel: "Выкинуть мусор", countLabel: "1 раз вечером, еженедельно", image: "none")
        let hab6 = HabitsModel(nameLabel: "Разобрать бумажную почту", countLabel: "1 раз утром, еженедельно", image: "none")
        let hab7 = HabitsModel(nameLabel: "Освободить пространство", countLabel: "1 раз утром, еженедельно", image: "none")
        let hab8 = HabitsModel(nameLabel: "Заправить постель", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab9 = HabitsModel(nameLabel: "Погулять с собакой", countLabel: "30 мин утром, ежедневно", image: "none")
        let hab10 = HabitsModel(nameLabel: "Убрать на кухонном столе", countLabel: "1 раз днём, ежедневно", image: "none")
        let hab11 = HabitsModel(nameLabel: "Вымыть посуду", countLabel: "1 раз вечером, ежедневно", image: "none")
        
        homeHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11]
    }
    
    func configureFitnessHabits() {
        let hab1 = HabitsModel(nameLabel: "Поиграйте в спортивную игру", countLabel: "2 ч днём, еженедельно", image: "none")
        let hab2 = HabitsModel(nameLabel: "Заняться йогой", countLabel: "1 раз днём, еженедельно", image: "none")
        let hab3 = HabitsModel(nameLabel: "Сделать отжимания", countLabel: "20 раз вечером, через кажд. 2 дн.", image: "none")
        let hab4 = HabitsModel(nameLabel: "Покататься на велосипеде", countLabel: "2 раза вечером, через кажд. 3 дн.", image: "none")
        let hab5 = HabitsModel(nameLabel: "Пойти поплавать", countLabel: "2 раза вечером, через кажд. 2 дн.", image: "none")
        let hab6 = HabitsModel(nameLabel: "Посетить тренажерный зал", countLabel: "3 раза вечером, через кажд. 2 дн.", image: "none")
        let hab7 = HabitsModel(nameLabel: "Сделать зарядку", countLabel: "7 мин утром, ежедневно", image: "none")
        let hab8 = HabitsModel(nameLabel: "Погулять пешком", countLabel: "2 км вечером, ежедневно", image: "none")
        let hab9 = HabitsModel(nameLabel: "Побегать", countLabel: "30 мин утром, ежедневно", image: "none")
        let hab10 = HabitsModel(nameLabel: "Сделать планку", countLabel: "5 мин утром, ежедневно", image: "none")
        
        fitnessHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10]
    }
    
    func configureHealthHabits() {
        let hab1 = HabitsModel(nameLabel: "Выпить стакан воды", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab2 = HabitsModel(nameLabel: "Почистить зубы", countLabel: "2 мин утром, ежедневно", image: "none")
        let hab3 = HabitsModel(nameLabel: "Принять душ", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab4 = HabitsModel(nameLabel: "Съесть полезный завтрак", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab5 = HabitsModel(nameLabel: "Принять витамины", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab6 = HabitsModel(nameLabel: "Сварить кофе", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab7 = HabitsModel(nameLabel: "Съесть фрукт", countLabel: "1 раз днём, ежедневно", image: "none")
        let hab8 = HabitsModel(nameLabel: "Подремать", countLabel: "30 мин днём, ежедневно", image: "none")
        let hab9 = HabitsModel(nameLabel: "Сделать перерыв", countLabel: "1 раз днём, ежедневно", image: "none")
        let hab10 = HabitsModel(nameLabel: "Съесть здоровую пищу", countLabel: "1 раз днём, ежедневно", image: "none")
        let hab11 = HabitsModel(nameLabel: "Выпить воды", countLabel: "4 раза днём, ежедневно", image: "none")
        let hab12 = HabitsModel(nameLabel: "Ограничить кофеин", countLabel: "1 раз вечером, ежедневно", image: "none")
        let hab13 = HabitsModel(nameLabel: "Съесть лёгкий ужин", countLabel: "1 раз вечером, ежедневно", image: "none")
        let hab14 = HabitsModel(nameLabel: "Выпить кефир или йогурт", countLabel: "1 раз вечером, ежедневно", image: "none")
        let hab15 = HabitsModel(nameLabel: "Лечь спать", countLabel: "1 раз ночью, ежедневно", image: "none")
        let hab16 = HabitsModel(nameLabel: "Медитировать", countLabel: "2 раза в течение дня, ежедневно", image: "none")
        let hab17 = HabitsModel(nameLabel: "Заняться дыхательной практикой", countLabel: "2 раза в течение дня, ежедневно", image: "none")
        let hab18 = HabitsModel(nameLabel: "Принять лекарства", countLabel: "1 раз утром, ежедневно", image: "none")
        let hab19 = HabitsModel(nameLabel: "Измерить давление", countLabel: "1 раз утром, ежедневно", image: "none")
        
        healthHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11, hab12, hab13, hab14, hab15, hab16, hab17, hab18, hab19]
    }
    
}

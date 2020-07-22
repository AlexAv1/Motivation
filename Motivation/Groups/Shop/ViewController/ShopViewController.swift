//
//  ShopViewController.swift
//  Motivation
//
//  Created by iMac on 03.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit
import RealmSwift

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
        let s1 = ShopModel()
        s1.setup(nameLabel: "Здоровье", id: 1)
        let s2 = ShopModel()
        s2.setup(nameLabel: "Фитнес", id: 2)
        let s3 = ShopModel()
        s3.setup(nameLabel: "Дом", id: 3)
        let s4 = ShopModel()
        s4.setup(nameLabel: "Увлечения", id: 4)
        let s5 = ShopModel()
        s5.setup(nameLabel: "Общество", id: 5)
        let s6 = ShopModel()
        s6.setup(nameLabel: "Эффективность", id: 6)
        let s7 = ShopModel()
        s7.setup(nameLabel: "Совершенствование", id: 7)
        let s8 = ShopModel()
        s8.setup(nameLabel: "Здоровье", id: 8)
        
        shops = [s1, s2, s3, s4, s5, s6, s7, s8]
    }
    
    func configureTitle() {
        title = "Магазин"
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Магазин", style: .plain, target: nil, action: nil)
    }
    
    func configureCreationHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Написать статью в блог", countLabel: "1 раз вечером, еженедельно", id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Порисовать обеими руками", countLabel: "1 раз в течение дня, еженедельно", id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Написать что-нибудь от руки", countLabel: "10 мин утром, каждый будний день", id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Сделать фото в инстаграмм", countLabel: "1 раз вечером, ежедневно", id: 4)
        
        creationHabits = [hab1, hab2, hab3, hab4]
    }
    
    func configureImprovementHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Спланировать путешествие", countLabel: "1 раз утром, ежемесячно", id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Посмотреть иностранный фильм", countLabel: "2 ч вечером, еженедельно", id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Послушать новую группу", countLabel: "45 мин в течение дня, еженедельно", id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Съесть новое блюдо", countLabel: "1 раз днём, еженедельно", id: 4)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Сделать что-то, что пугает", countLabel: "1 раз в течение дня, через кажд. 21 дн.", id: 5)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Узнать новый факт", countLabel: "1 раз в течение дня, ежедневно", id: 6)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Практика в новом языке", countLabel: "10 мин вечером, ежедневно", id: 7)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Выучить 10 новых слов", countLabel: "20 мин в течение дня, ежедневно", id: 8)
        
        improvementHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8]
    }
    
    func configureEfficiencyHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Провести день без соцсетей", countLabel: "1 раз в течение дня, ежемесячно", id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Не включать компьютер", countLabel: "1 раз в течение дня, еженедельно", id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Работать из дома", countLabel: "1 раз в течение дня, еженедельно", id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Написать план на неделю", countLabel: "1 раз утром, еженедельно", id: 4)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Подведение итогов за неделю", countLabel: "1 раз утром, еженедельно", id: 5)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Поставить цели на год", countLabel: "1 раз в течение дня, через кажд. 365 дн.", id: 6)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Разобрать все письма", countLabel: "1 раз вечером, каждый будний день", id: 7)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Написать отчёт и план на завтра", countLabel: "1 раз вечером, каждый будний день", id: 8)
        let hab9 = HabitsModel()
        hab9.setup(nameLabel: "Выключить компьютер в 21:00", countLabel: "1 раз вечером, каждый будний день", id: 9)
        let hab10 = HabitsModel()
        hab10.setup(nameLabel: "Отвлекаться от компьютера", countLabel: "1 раз в течение дня, каждый будний день", id: 10)
        let hab11 = HabitsModel()
        hab11.setup(nameLabel: "Заниматься своим проектом", countLabel: "2 ч вечером, каждый будний день", id: 11)
        let hab12 = HabitsModel()
        hab12.setup(nameLabel: "Начать день с Motivation", countLabel: "1 раз утром, ежедневно", id: 12)
        let hab13 = HabitsModel()
        hab13.setup(nameLabel: "Лечь спать до 12 ночи", countLabel: "1 раз ночью, ежедневно", id: 13)
        let hab14 = HabitsModel()
        hab14.setup(nameLabel: "Просыпаться вовремя", countLabel: "1 раз утром, ежедневно", id: 14)
        let hab15 = HabitsModel()
        hab15.setup(nameLabel: "Вести список задач", countLabel: "1 раз в течение дня, ежедневно", id: 15)
        
        efficiencyHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11, hab12, hab13, hab14, hab15]
    }
    
    func configureSocietyHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Позвонить родителям", countLabel: "1 раз утром, ежемесячно", id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Позвонить старому другу", countLabel: "1 раз вечером, ежемесячно", id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Встретиться с друзьями", countLabel: "1 раз вечером, ежемесячно", id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Провести день с семьёй", countLabel: "1 раз в течение дня, еженедельно", id: 4)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Сказать «Я тебя люблю»", countLabel: "1 раз в течение дня, еженедельно", id: 5)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Выйти из дома", countLabel: "1 раз вечером, еженедельно", id: 6)
        
        societyHabits = [hab1, hab2, hab3, hab4, hab5, hab6]
    }
    
    func configureHobbiesHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Потанцевать", countLabel: "1 ч вечером, еженедельно", id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Приготовить что-то новое", countLabel: "1 раз вечером, еженедельно", id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Поиграть на инструменте", countLabel: "1 ч днём, еженедельно", id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Порисовать", countLabel: "1 ч днём, еженедельно", id: 4)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Поиграть в игру", countLabel: "1 ч днём, еженедельно", id: 5)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Почитать книгу", countLabel: "30 мин вечером, ежедневно", id: 6)
        
        hobbiesHabits = [hab1, hab2, hab3, hab4, hab5, hab6]
    }
    
    func configureHomeHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Сделать уборку", countLabel: "1 раз днём, еженедельно", id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Полить цветы", countLabel: "1 раз днём, еженедельно", id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Постирать", countLabel: "1 раз утром, еженедельно", id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Приготовить обед", countLabel: "1 раз днём, еженедельно", id: 4)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Выкинуть мусор", countLabel: "1 раз вечером, еженедельно", id: 5)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Разобрать бумажную почту", countLabel: "1 раз утром, еженедельно", id: 6)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Освободить пространство", countLabel: "1 раз утром, еженедельно", id: 7)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Заправить постель", countLabel: "1 раз утром, ежедневно", id: 8)
        let hab9 = HabitsModel()
        hab9.setup(nameLabel: "Погулять с собакой", countLabel: "30 мин утром, ежедневно", id: 9)
        let hab10 = HabitsModel()
        hab10.setup(nameLabel: "Убрать на кухонном столе", countLabel: "1 раз днём, ежедневно", id: 10)
        let hab11 = HabitsModel()
        hab11.setup(nameLabel: "Вымыть посуду", countLabel: "1 раз вечером, ежедневно", id: 11)
        
        homeHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11]
    }
    
    func configureFitnessHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Поиграйте в спортивную игру", countLabel: "2 ч днём, еженедельно", id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Заняться йогой", countLabel: "1 раз днём, еженедельно", id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Сделать отжимания", countLabel: "20 раз вечером, через кажд. 2 дн.", id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Покататься на велосипеде", countLabel: "2 раза вечером, через кажд. 3 дн.", id: 4)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Пойти поплавать", countLabel: "2 раза вечером, через кажд. 2 дн.", id: 5)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Посетить тренажерный зал", countLabel: "3 раза вечером, через кажд. 2 дн.", id: 6)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Сделать зарядку", countLabel: "7 мин утром, ежедневно", id: 7)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Погулять пешком", countLabel: "2 км вечером, ежедневно", id: 8)
        let hab9 = HabitsModel()
        hab9.setup(nameLabel: "Побегать", countLabel: "30 мин утром, ежедневно", id: 9)
        let hab10 = HabitsModel()
        hab10.setup(nameLabel: "Сделать планку", countLabel: "5 мин утром, ежедневно", id: 10)
        
        fitnessHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10]
    }
    
    func configureHealthHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Выпить стакан воды", countLabel: "1 раз утром, ежедневно", id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Почистить зубы", countLabel: "2 мин утром, ежедневно", id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Принять душ", countLabel: "1 раз утром, ежедневно", id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Съесть полезный завтрак", countLabel: "1 раз утром, ежедневно", id: 4)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Принять витамины", countLabel: "1 раз утром, ежедневно", id: 5)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Сварить кофе", countLabel: "1 раз утром, ежедневно", id: 6)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Съесть фрукт", countLabel: "1 раз днём, ежедневно", id: 7)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Подремать", countLabel: "30 мин днём, ежедневно", id: 8)
        let hab9 = HabitsModel()
        hab9.setup(nameLabel: "Сделать перерыв", countLabel: "1 раз днём, ежедневно", id: 9)
        let hab10 = HabitsModel()
        hab10.setup(nameLabel: "Съесть здоровую пищу", countLabel: "1 раз днём, ежедневно", id: 10)
        let hab11 = HabitsModel()
        hab11.setup(nameLabel: "Выпить воды", countLabel: "4 раза днём, ежедневно", id: 11)
        let hab12 = HabitsModel()
        hab12.setup(nameLabel: "Ограничить кофеин", countLabel: "1 раз вечером, ежедневно", id: 12)
        let hab13 = HabitsModel()
        hab13.setup(nameLabel: "Съесть лёгкий ужин", countLabel: "1 раз вечером, ежедневно", id: 13)
        let hab14 = HabitsModel()
        hab14.setup(nameLabel: "Выпить кефир или йогурт", countLabel: "1 раз вечером, ежедневно", id: 14)
        let hab15 = HabitsModel()
        hab15.setup(nameLabel: "Лечь спать", countLabel: "1 раз ночью, ежедневно", id: 15)
        let hab16 = HabitsModel()
        hab16.setup(nameLabel: "Медитировать", countLabel: "2 раза в течение дня, ежедневно", id: 16)
        let hab17 = HabitsModel()
        hab17.setup(nameLabel: "Заняться дыхательной практикой", countLabel: "2 раза в течение дня, ежедневно", id: 17)
        let hab18 = HabitsModel()
        hab18.setup(nameLabel: "Принять лекарства", countLabel: "1 раз утром, ежедневно", id: 18)
        let hab19 = HabitsModel()
        hab19.setup(nameLabel: "Измерить давление", countLabel: "1 раз утром, ежедневно", id: 19)
        
        healthHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11, hab12, hab13, hab14, hab15, hab16, hab17, hab18, hab19]
    }
    
}

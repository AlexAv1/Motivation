//
//  ContentManager.swift
//  Motivation
//
//  Created by iMac on 22.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import Foundation
import RealmSwift

class ContentManager {
    
    // - Realm
    let realm = try! Realm()
    
    // - Data
    var shops = [ShopModel]()
    var improvementHabits = [HabitsModel]()
    var efficiencyHabits = [HabitsModel]()
    var societyHabits = [HabitsModel]()
    var hobbiesHabits = [HabitsModel]()
    var homeHabits = [HabitsModel]()
    var fitnessHabits = [HabitsModel]()
    var healthHabits = [HabitsModel]()
    var creationHabits = [HabitsModel]()
    
    func configure() {
        configureShops()
        configureHealthHabits()
        configureFitnessHabits()
        configureHomeHabits()
        configureHobbiesHabits()
        configureSocietyHabits()
        configureEfficiencyHabits()
        configureImprovementHabits()
        configureCreationHabits()
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
        s8.setup(nameLabel: "Творчество", id: 8)
        
        shops = [s1, s2, s3, s4, s5, s6, s7, s8]
        
        try! realm.write {
            realm.add(shops, update: .all)
        }

    }
    
    func configureCreationHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Написать статью в блог", countLabel: "1 раз вечером, еженедельно", type: HabitsType.creation.rawValue, id: 1)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Порисовать обеими руками", countLabel: "1 раз в течение дня, еженедельно", type: HabitsType.creation.rawValue, id: 2)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Написать что-нибудь от руки", countLabel: "10 мин утром, каждый будний день", type: HabitsType.creation.rawValue, id: 3)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Сделать фото в инстаграмм", countLabel: "1 раз вечером, ежедневно", type: HabitsType.creation.rawValue, id: 4)
        
        creationHabits = [hab1, hab2, hab3, hab4]
        
        try! realm.write {
            realm.add(creationHabits, update: .all)
        }
        
    }
    
    func configureImprovementHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Спланировать путешествие", countLabel: "1 раз утром, ежемесячно", type: HabitsType.improvement.rawValue, id: 5)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Посмотреть иностранный фильм", countLabel: "2 ч вечером, еженедельно", type: HabitsType.improvement.rawValue, id: 6)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Послушать новую группу", countLabel: "45 мин в течение дня, еженедельно", type: HabitsType.improvement.rawValue, id: 7)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Съесть новое блюдо", countLabel: "1 раз днём, еженедельно", type: HabitsType.improvement.rawValue, id: 8)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Сделать что-то, что пугает", countLabel: "1 раз в течение дня, через кажд. 21 дн.", type: HabitsType.improvement.rawValue, id: 9)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Узнать новый факт", countLabel: "1 раз в течение дня, ежедневно", type: HabitsType.improvement.rawValue, id: 10)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Практика в новом языке", countLabel: "10 мин вечером, ежедневно", type: HabitsType.improvement.rawValue, id: 11)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Выучить 10 новых слов", countLabel: "20 мин в течение дня, ежедневно", type: HabitsType.improvement.rawValue, id: 12)
        
        improvementHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8]
        
        try! realm.write {
            realm.add(improvementHabits, update: .all)
        }
        
    }
    
    func configureEfficiencyHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Провести день без соцсетей", countLabel: "1 раз в течение дня, ежемесячно", type: HabitsType.efficiency.rawValue, id: 13)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Не включать компьютер", countLabel: "1 раз в течение дня, еженедельно", type: HabitsType.efficiency.rawValue, id: 14)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Работать из дома", countLabel: "1 раз в течение дня, еженедельно", type: HabitsType.efficiency.rawValue, id: 15)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Написать план на неделю", countLabel: "1 раз утром, еженедельно", type: HabitsType.efficiency.rawValue, id: 16)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Подведение итогов за неделю", countLabel: "1 раз утром, еженедельно", type: HabitsType.efficiency.rawValue, id: 17)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Поставить цели на год", countLabel: "1 раз в течение дня, через кажд. 365 дн.", type: HabitsType.efficiency.rawValue, id: 18)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Разобрать все письма", countLabel: "1 раз вечером, каждый будний день", type: HabitsType.efficiency.rawValue, id: 19)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Написать отчёт и план на завтра", countLabel: "1 раз вечером, каждый будний день", type: HabitsType.efficiency.rawValue, id: 20)
        let hab9 = HabitsModel()
        hab9.setup(nameLabel: "Выключить компьютер в 21:00", countLabel: "1 раз вечером, каждый будний день", type: HabitsType.efficiency.rawValue, id: 21)
        let hab10 = HabitsModel()
        hab10.setup(nameLabel: "Отвлекаться от компьютера", countLabel: "1 раз в течение дня, каждый будний день", type: HabitsType.efficiency.rawValue, id: 22)
        let hab11 = HabitsModel()
        hab11.setup(nameLabel: "Заниматься своим проектом", countLabel: "2 ч вечером, каждый будний день", type: HabitsType.efficiency.rawValue, id: 23)
        let hab12 = HabitsModel()
        hab12.setup(nameLabel: "Начать день с Motivation", countLabel: "1 раз утром, ежедневно", type: HabitsType.efficiency.rawValue, id: 24)
        let hab13 = HabitsModel()
        hab13.setup(nameLabel: "Лечь спать до 12 ночи", countLabel: "1 раз ночью, ежедневно", type: HabitsType.efficiency.rawValue, id: 25)
        let hab14 = HabitsModel()
        hab14.setup(nameLabel: "Просыпаться вовремя", countLabel: "1 раз утром, ежедневно", type: HabitsType.efficiency.rawValue, id: 26)
        let hab15 = HabitsModel()
        hab15.setup(nameLabel: "Вести список задач", countLabel: "1 раз в течение дня, ежедневно", type: HabitsType.efficiency.rawValue, id: 27)
        
        efficiencyHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11, hab12, hab13, hab14, hab15]
        
        try! realm.write {
            realm.add(efficiencyHabits, update: .all)
        }
        
    }
    
    func configureSocietyHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Позвонить родителям", countLabel: "1 раз утром, ежемесячно", type: HabitsType.society.rawValue, id: 28)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Позвонить старому другу", countLabel: "1 раз вечером, ежемесячно", type: HabitsType.society.rawValue, id: 29)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Встретиться с друзьями", countLabel: "1 раз вечером, ежемесячно", type: HabitsType.society.rawValue, id: 30)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Провести день с семьёй", countLabel: "1 раз в течение дня, еженедельно", type: HabitsType.society.rawValue, id: 31)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Сказать «Я тебя люблю»", countLabel: "1 раз в течение дня, еженедельно", type: HabitsType.society.rawValue, id: 32)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Выйти из дома", countLabel: "1 раз вечером, еженедельно", type: HabitsType.society.rawValue, id: 33)
        
        societyHabits = [hab1, hab2, hab3, hab4, hab5, hab6]
        
        try! realm.write {
            realm.add(societyHabits, update: .all)
        }
        
    }
    
    func configureHobbiesHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Потанцевать", countLabel: "1 ч вечером, еженедельно", type: HabitsType.hobbie.rawValue, id: 34)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Приготовить что-то новое", countLabel: "1 раз вечером, еженедельно", type: HabitsType.hobbie.rawValue, id: 35)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Поиграть на инструменте", countLabel: "1 ч днём, еженедельно", type: HabitsType.hobbie.rawValue, id: 36)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Порисовать", countLabel: "1 ч днём, еженедельно", type: HabitsType.hobbie.rawValue, id: 37)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Поиграть в игру", countLabel: "1 ч днём, еженедельно", type: HabitsType.hobbie.rawValue, id: 38)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Почитать книгу", countLabel: "30 мин вечером, ежедневно", type: HabitsType.hobbie.rawValue, id: 39)
        
        hobbiesHabits = [hab1, hab2, hab3, hab4, hab5, hab6]
        
        try! realm.write {
            realm.add(hobbiesHabits, update: .all)
        }
        
    }
    
    func configureHomeHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Сделать уборку", countLabel: "1 раз днём, еженедельно", type: HabitsType.home.rawValue, id: 40)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Полить цветы", countLabel: "1 раз днём, еженедельно", type: HabitsType.home.rawValue, id: 41)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Постирать", countLabel: "1 раз утром, еженедельно", type: HabitsType.home.rawValue, id: 42)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Приготовить обед", countLabel: "1 раз днём, еженедельно", type: HabitsType.home.rawValue, id: 43)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Выкинуть мусор", countLabel: "1 раз вечером, еженедельно", type: HabitsType.home.rawValue, id: 44)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Разобрать бумажную почту", countLabel: "1 раз утром, еженедельно", type: HabitsType.home.rawValue, id: 45)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Освободить пространство", countLabel: "1 раз утром, еженедельно", type: HabitsType.home.rawValue, id: 46)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Заправить постель", countLabel: "1 раз утром, ежедневно", type: HabitsType.home.rawValue, id: 47)
        let hab9 = HabitsModel()
        hab9.setup(nameLabel: "Погулять с собакой", countLabel: "30 мин утром, ежедневно", type: HabitsType.home.rawValue, id: 48)
        let hab10 = HabitsModel()
        hab10.setup(nameLabel: "Убрать на кухонном столе", countLabel: "1 раз днём, ежедневно", type: HabitsType.home.rawValue, id: 49)
        let hab11 = HabitsModel()
        hab11.setup(nameLabel: "Вымыть посуду", countLabel: "1 раз вечером, ежедневно", type: HabitsType.home.rawValue, id: 50)
        
        homeHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11]
        
        try! realm.write {
            realm.add(homeHabits, update: .all)
        }
        
    }
    
    func configureFitnessHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Поиграйте в спортивную игру", countLabel: "2 ч днём, еженедельно", type: HabitsType.fitnes.rawValue, id: 51)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Заняться йогой", countLabel: "1 раз днём, еженедельно", type: HabitsType.fitnes.rawValue, id: 52)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Сделать отжимания", countLabel: "20 раз вечером, через кажд. 2 дн.", type: HabitsType.fitnes.rawValue, id: 53)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Покататься на велосипеде", countLabel: "2 раза вечером, через кажд. 3 дн.", type: HabitsType.fitnes.rawValue, id: 54)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Пойти поплавать", countLabel: "2 раза вечером, через кажд. 2 дн.", type: HabitsType.fitnes.rawValue, id: 55)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Посетить тренажерный зал", countLabel: "3 раза вечером, через кажд. 2 дн.", type: HabitsType.fitnes.rawValue, id: 56)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Сделать зарядку", countLabel: "7 мин утром, ежедневно", type: HabitsType.fitnes.rawValue, id: 57)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Погулять пешком", countLabel: "2 км вечером, ежедневно", type: HabitsType.fitnes.rawValue, id: 58)
        let hab9 = HabitsModel()
        hab9.setup(nameLabel: "Побегать", countLabel: "30 мин утром, ежедневно", type: HabitsType.fitnes.rawValue, id: 59)
        let hab10 = HabitsModel()
        hab10.setup(nameLabel: "Сделать планку", countLabel: "5 мин утром, ежедневно", type: HabitsType.fitnes.rawValue, id: 60)
        
        fitnessHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10]
        
        try! realm.write {
            realm.add(fitnessHabits, update: .all)
        }
        
    }
    
    func configureHealthHabits() {
        let hab1 = HabitsModel()
        hab1.setup(nameLabel: "Выпить стакан воды", countLabel: "1 раз утром, ежедневно", type: HabitsType.health.rawValue, id: 61)
        let hab2 = HabitsModel()
        hab2.setup(nameLabel: "Почистить зубы", countLabel: "2 мин утром, ежедневно", type: HabitsType.health.rawValue, id: 62)
        let hab3 = HabitsModel()
        hab3.setup(nameLabel: "Принять душ", countLabel: "1 раз утром, ежедневно", type: HabitsType.health.rawValue, id: 63)
        let hab4 = HabitsModel()
        hab4.setup(nameLabel: "Съесть полезный завтрак", countLabel: "1 раз утром, ежедневно", type: HabitsType.health.rawValue, id: 64)
        let hab5 = HabitsModel()
        hab5.setup(nameLabel: "Принять витамины", countLabel: "1 раз утром, ежедневно", type: HabitsType.health.rawValue, id: 65)
        let hab6 = HabitsModel()
        hab6.setup(nameLabel: "Сварить кофе", countLabel: "1 раз утром, ежедневно", type: HabitsType.health.rawValue, id: 66)
        let hab7 = HabitsModel()
        hab7.setup(nameLabel: "Съесть фрукт", countLabel: "1 раз днём, ежедневно", type: HabitsType.health.rawValue, id: 67)
        let hab8 = HabitsModel()
        hab8.setup(nameLabel: "Подремать", countLabel: "30 мин днём, ежедневно", type: HabitsType.health.rawValue, id: 68)
        let hab9 = HabitsModel()
        hab9.setup(nameLabel: "Сделать перерыв", countLabel: "1 раз днём, ежедневно", type: HabitsType.health.rawValue, id: 69)
        let hab10 = HabitsModel()
        hab10.setup(nameLabel: "Съесть здоровую пищу", countLabel: "1 раз днём, ежедневно", type: HabitsType.health.rawValue, id: 70)
        let hab11 = HabitsModel()
        hab11.setup(nameLabel: "Выпить воды", countLabel: "4 раза днём, ежедневно", type: HabitsType.health.rawValue, id: 71)
        let hab12 = HabitsModel()
        hab12.setup(nameLabel: "Ограничить кофеин", countLabel: "1 раз вечером, ежедневно", type: HabitsType.health.rawValue, id: 72)
        let hab13 = HabitsModel()
        hab13.setup(nameLabel: "Съесть лёгкий ужин", countLabel: "1 раз вечером, ежедневно", type: HabitsType.health.rawValue, id: 73)
        let hab14 = HabitsModel()
        hab14.setup(nameLabel: "Выпить кефир или йогурт", countLabel: "1 раз вечером, ежедневно", type: HabitsType.health.rawValue, id: 74)
        let hab15 = HabitsModel()
        hab15.setup(nameLabel: "Лечь спать", countLabel: "1 раз ночью, ежедневно", type: HabitsType.health.rawValue, id: 75)
        let hab16 = HabitsModel()
        hab16.setup(nameLabel: "Медитировать", countLabel: "2 раза в течение дня, ежедневно", type: HabitsType.health.rawValue, id: 76)
        let hab17 = HabitsModel()
        hab17.setup(nameLabel: "Заняться дыхательной практикой", countLabel: "2 раза в течение дня, ежедневно", type: HabitsType.health.rawValue, id: 77)
        let hab18 = HabitsModel()
        hab18.setup(nameLabel: "Принять лекарства", countLabel: "1 раз утром, ежедневно", type: HabitsType.health.rawValue, id: 78)
        let hab19 = HabitsModel()
        hab19.setup(nameLabel: "Измерить давление", countLabel: "1 раз утром, ежедневно", type: HabitsType.health.rawValue, id: 79)
        
        healthHabits = [hab1, hab2, hab3, hab4, hab5, hab6, hab7, hab8, hab9, hab10, hab11, hab12, hab13, hab14, hab15, hab16, hab17, hab18, hab19]
        
        try! realm.write {
            realm.add(healthHabits, update: .all)
        }
    }
    
}

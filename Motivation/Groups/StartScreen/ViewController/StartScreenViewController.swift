//
//  StartScreenViewController.swift
//  Motivation
//
//  Created by iMac on 03.07.2020.
//  Copyright © 2020 AlexAviJr. All rights reserved.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var startButton: UIButton!
    
    
    // - Data
    private var screens = [StartScreenModel]()
    
    // - Action
    @IBAction func closeButtonAction(_ sender: Any) {
        let tabBarVC = TabBarViewController()
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

// MARK: -
// MARK: - CollectionViewDataSource

extension StartScreenViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return screens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StartScreenCollectionViewCell", for: indexPath) as! StartScreenCollectionViewCell
        let screen = screens[indexPath.row]
        cell.label1.text = screen.label1
        cell.label2.text = screen.label2
        cell.image.image = UIImage(named: screen.image)
        cell.startButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        cell.startButton.isHidden = true
        if indexPath.row == screens.count - 1 {
            cell.startButton.isHidden = false
        }
        return cell
    }
    
    @objc func buttonPressed() {
        let tabBarVC = TabBarViewController()
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true, completion: nil)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let  pageNumber = scrollView .contentOffset .x / scrollView .frame .size .width
        pageControl.currentPage = Int(pageNumber)
    }
    
}

// MARK: -
// MARK: - CollectionViewDelegate

extension StartScreenViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        return CGSize(width: width, height: height)
    }
    
}

// MARK: -
// MARK: - Configure

private extension StartScreenViewController {
    
    func configure() {
        configureCollectionView()
        configureScreens()
        configurePageControl()
    }
    
    func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func configureScreens() {
        let sc1 = StartScreenModel(label1: "Добро пожаловать в Motivation! Мы хотим показать, как просто формировать привычки", label2: "Смахните влево", image: "")
        let sc2 = StartScreenModel(label1: "Начните с маленьких шагов: добавьте не больше трех привычек и выполняйте их регулярно", label2: " ", image: "second")
        let sc3 = StartScreenModel(label1: "Выберите что-то простое, чтобы у Вас не было никакой возможности сказать себе «нет»", label2: " ", image: "")
        let sc4 = StartScreenModel(label1: "Сфокусируйтесь на простых ежедневных ритуалах, которые усилят хорошие привычки", label2: " ", image: "")
        let sc5 = StartScreenModel(label1: "Становитесь лучше, делая маленькие шаги для достижения значительных результатов", label2: " ", image: "5")
        let sc6 = StartScreenModel(label1: "Улучшайте свою жизнь, а мы позаботимся о мотивации и напоминаниях, когда они нужны", label2: " ", image: "6")
        let sc7 = StartScreenModel(label1: "Создавайте Ваш новый образ жизни вместе с Motivation, шаг за шагом, день за днём", label2: " ", image: "")
        
        screens = [sc1, sc2, sc3, sc4, sc5, sc6, sc7]
    }
    
    func configurePageControl() {
        pageControl.numberOfPages = screens.count
        pageControl.currentPageIndicatorTintColor = UIColor.black
    }
    
}


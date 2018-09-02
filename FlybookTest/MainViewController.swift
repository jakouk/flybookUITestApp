//
//  MainViewController.swift
//  FlybookTest
//
//  Created by jakouk on 2018. 6. 27..
//  Copyright © 2018년 jakouk. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
  let plustBarButton = UIBarButtonItem()
  var firstHeight: CGFloat = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
    setupConstraint()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    if firstHeight == 0 {
      firstHeight = (self.tabBarController?.tabBar.frame.height)!
    } else {
      setTabBarHidden(false)
    }
    print("main viewDidAppear")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("viewWillAppear")
    
    // iOS 11에서 translucent를 true롤 설정하면 기본적으로 반투명이다.
    // 이걸로 투명, 반투명을 주어서 navigation의 색을 주거나 아예 보이지 않게 만듬
    // isTransLucent = false 는 일발, true는 반투명 
    self.navigationController?.navigationBar.isTranslucent = false
    self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.133, green: 0.227, blue: 0.3686, alpha: 1)
  }
  
  func setupUI() {
    view.backgroundColor = .white
    
    // backBarButton Blank
     navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
     navigationItem.backBarButtonItem?.tintColor = .white
    
    let icon = UIImage(named: "icon-plus")
    let iconSize = CGRect(origin: CGPoint.zero, size: CGSize(width: 50, height: 50))
    let iconButton = UIButton(frame: iconSize)
    iconButton.setBackgroundImage(icon, for: .normal)
    iconButton.addTarget(self, action: #selector(plusButtonDidTap), for: .touchUpInside)
    plustBarButton.customView = iconButton
    let currWidth = plustBarButton.customView?.widthAnchor.constraint(equalToConstant: 50)
    currWidth?.isActive = true
    let currHeight = plustBarButton.customView?.heightAnchor.constraint(equalToConstant: 40)
    currHeight?.isActive = true
    navigationItem.leftBarButtonItem = plustBarButton
    navigationController?.navigationBar.topItem?.title = "FLYBOOK"
    
    // image를 세팅하고서 pop한 이후에는 먹히지 않음 .
  }
  
  func setupConstraint() {
    
  }
  
  // MARK: Action
  
  @objc func plusButtonDidTap() {
    let plusVC = PlusViewController()
    self.navigationController?.pushViewController(plusVC, animated: true)
  }
}

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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
    setupConstraint()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("viewDidAppear")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.navigationBar.tintColor = UIColor(red: 0.133, green: 0.227, blue: 0.3686, alpha: 1)
    navigationController?.navigationBar.topItem?.title = "FLYBOOK"
  }
  
  func setupUI() {
    view.backgroundColor = .white
    
     navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    
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
  }
  
  func setupConstraint() {
    
  }
  
  // MARK: Action
  
  @objc func plusButtonDidTap() {
    let plusVC = PlusViewController()
    self.navigationController?.pushViewController(plusVC, animated: true)
  }
}

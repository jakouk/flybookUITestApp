//
//  PlusViewController.swift
//  FlybookTest
//
//  Created by unbTech on 2018. 7. 9..
//  Copyright © 2018년 jakouk. All rights reserved.
//

import UIKit
import SnapKit

class PlusViewController: UIViewController {
  
  let imageView = UIImageView(frame: CGRect.zero)
  let scrollView = UIScrollView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
    setupConstraint()
    setTabBarHidden(true)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("viewDidDisappear")
    
    setTabBarHidden(false)
    
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = false
    navigationController?.navigationBar.tintColor = UIColor(red: 0.133, green: 0.227, blue: 0.3686, alpha: 1)
  }
  
  
  func setupUI() {
    view.backgroundColor = .white
    
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = true
    
//    navigationController?.navigationBar.isTranslucent = true
//    navigationController?.navigationBar.barTintColor = .clear
//    navigationController?.view.backgroundColor = .clear
//
    imageView.image = UIImage(named: "backImage")
    view.addSubview(imageView)
  }
  
  func setupConstraint() {
    imageView.snp.makeConstraints { make in
      make.top.leading.trailing.equalToSuperview()
      make.bottom.equalToSuperview().offset(-self.view.frame.height / 3 * 2)
    }
  }
  
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

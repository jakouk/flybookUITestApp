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
  
  let imageView = UIImageView()
  let scrollView = UIScrollView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
  }
  
  func setupUI() {
    view.backgroundColor = .white
    
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = true
    self.navigationController?.view.backgroundColor = UIColor.clear
    
//    self.navigationItem.barTintColor = UIColor(red: 0.133, green: 0.227, blue: 0.3686, alpha: 1)
    
    imageView.image = UIImage(named: "backImage")
    view.addSubview(imageView)
  }
  
  func setupConstraint() {
    imageView.snp.makeConstraints { make in
      make.top.leading.trailing.equalToSuperview()
      make.bottom.bottom.equalToSuperview().offset(self.view.frame.height / 2)
    }
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

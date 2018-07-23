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
  let image = UIImage()
  var defaultImage: UIImage?
  var contentView = UIView()
  
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
    
    self.navigationController?.navigationBar.setBackgroundImage(defaultImage, for: .default)
    self.navigationController?.navigationBar.shadowImage = defaultImage
    self.navigationController?.navigationBar.isTranslucent = false
    navigationController?.navigationBar.tintColor = UIColor(red: 0.133, green: 0.227, blue: 0.3686, alpha: 1)
  }
  
  
  func setupUI() {
    view.backgroundColor = .white
    
    defaultImage = self.navigationController?.navigationBar.backgroundImage(for: .default)
    
    self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
    self.navigationController?.navigationBar.shadowImage = image
    self.navigationController?.navigationBar.isTranslucent = true
    
    imageView.image = UIImage(named: "backImage")
    
    view.addSubview(imageView)
    view.addSubview(scrollView)
    scrollView.addSubview(contentView)
  }
  
  func setupConstraint() {
    // View
    imageView.snp.makeConstraints { make in
      make.top.leading.trailing.equalToSuperview()
      make.bottom.equalToSuperview().offset(-self.view.frame.height / 3 * 2)
    }
    
    scrollView.snp.makeConstraints { make in
      make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
      make.bottom.leading.trailing.equalTo(view)
    }
    
    // scrollView에 ContentView를 올리고서 layout 오류를 보지않으려면
    // top, bottom, leading trailing 을 equalToSuperView()로 하고서
    // width, height를 view와 equalTo하면 된다. 
    contentView.snp.makeConstraints { make in
      make.top.bottom.leading.trailing.equalToSuperview()
      make.width.equalTo(view)
      make.height.equalTo(view)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

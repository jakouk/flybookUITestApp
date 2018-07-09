//
//  TabbarController + Visible.swift
//  FlybookTest
//
//  Created by jakouk on 2018. 7. 9..
//  Copyright © 2018년 jakouk. All rights reserved.
//

import UIKit

extension UIViewController {
  func setTabBarHidden(_ hidden: Bool, animated: Bool = true, duration: TimeInterval = 0.3) {
    if animated {
      if let frame = self.tabBarController?.tabBar.frame {
        let factor: CGFloat = hidden ? 1 : -1
        let y = frame.origin.y + (frame.size.height * factor)
        UIView.animate(withDuration: duration, animations: {
          self.tabBarController?.tabBar.frame = CGRect(x: frame.origin.x, y: y, width: frame.width, height: frame.height)
        })
        return
      }
    }
    self.tabBarController?.tabBar.isHidden = hidden
  }
}


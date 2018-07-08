//
//  AppDelegate.swift
//  FlybookTest
//
//  Created by jakouk on 2018. 6. 27..
//  Copyright © 2018년 jakouk. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    setupMainWindow()
    return true
  }
  
  func setupMainWindow() {
    window = UIWindow(frame: UIScreen.main.bounds)
    
    let tabbarVC = UITabBarController()
    
    let navigationBarAppearace = UINavigationBar.appearance()
    navigationBarAppearace.tintColor = .white
    navigationBarAppearace.barTintColor = .blue
    navigationBarAppearace.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
  
    let homeVC = MainViewController()
    
    let homeNaviVC = UINavigationController(rootViewController: homeVC)
    homeNaviVC.navigationBar.topItem?.title = "FLYBOOK"
    homeNaviVC.navigationBar.barTintColor = UIColor(red: 0.133, green: 0.227, blue: 0.3686, alpha: 1)
    homeNaviVC.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    homeNaviVC.tabBarItem.title = "설정"
    homeNaviVC.tabBarItem.image = UIImage(named: "tab-home")
    homeNaviVC.tabBarItem.selectedImage = UIImage(named: "tab-home")

    
    let searchVC = SearchViewController()
    searchVC.tabBarItem.title = "검색"
    searchVC.tabBarItem.image = UIImage(named: "tab-search")
    searchVC.tabBarItem.selectedImage = UIImage(named: "tab-search")

    let writeVC = WriteViewController()
    writeVC.tabBarItem.title = "글쓰기"
    writeVC.tabBarItem.image = UIImage(named: "tab-write")
    writeVC.tabBarItem.selectedImage = UIImage(named: "tab-write")
    
    let feedVC = FeedViewController()
    feedVC.tabBarItem.title = "피드"
    feedVC.tabBarItem.image = UIImage(named: "tab-feed")
    feedVC.tabBarItem.selectedImage = UIImage(named: "tab-feed")
    
    let userVC = WriteViewController()
    userVC.tabBarItem.title = "내정보"
    userVC.tabBarItem.image = UIImage(named: "tab-user")
    userVC.tabBarItem.selectedImage = UIImage(named: "tab-user")
    
    tabbarVC.setViewControllers([homeNaviVC, searchVC, writeVC, feedVC, userVC], animated: true)
    UITabBar.appearance().tintColor = UIColor(red: 0.133, green: 0.227, blue: 0.3686, alpha: 1)
    
    window?.rootViewController = tabbarVC
    window?.makeKeyAndVisible()
  }


  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

